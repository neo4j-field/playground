#!/bin/bash
# Usage: ./reset_aura.sh <username> <password> <aura_uri>

USERNAME=$1
PASSWORD=$2
URI=$3

echo "Starting database wipe..."
START_TIME=$SECONDS

# 1. Count existing data for the summary
echo "Gathering database statistics..."
NODE_COUNT=$(cypher-shell -a $URI -u $USERNAME -p $PASSWORD --format plain "MATCH (n) RETURN count(n);" | tail -n +2 | tr -d ' "')
REL_COUNT=$(cypher-shell -a $URI -u $USERNAME -p $PASSWORD --format plain "MATCH ()-[r]->() RETURN count(r);" | tail -n +2 | tr -d ' "')

# 2. Delete all data
echo "Deleting ${NODE_COUNT} nodes and ${REL_COUNT} relationships..."
cypher-shell -a $URI -u $USERNAME -p $PASSWORD --format plain "MATCH (n) CALL { WITH n DETACH DELETE n } IN TRANSACTIONS OF 10000 ROWS;" > /dev/null

# 3. Fetch schema and dynamically generate DROP statements
echo "Fetching schema drops..."
cypher-shell -a $URI -u $USERNAME -p $PASSWORD --format plain "SHOW CONSTRAINTS YIELD name RETURN 'DROP CONSTRAINT ' + name + ';';" | tail -n +2 | tr -d '"' > drop_schema.cypher
cypher-shell -a $URI -u $USERNAME -p $PASSWORD --format plain "SHOW INDEXES YIELD name, type, owningConstraint WHERE type <> 'LOOKUP' AND owningConstraint IS NULL RETURN 'DROP INDEX ' + name + ';';" | tail -n +2 | tr -d '"' >> drop_schema.cypher

# 4. Execute the dynamically generated DROP statements
if [ -s drop_schema.cypher ] && grep -q "DROP" drop_schema.cypher; then
    echo "Executing schema drops..."
    SCHEMA_COUNT=$(wc -l < drop_schema.cypher | tr -d ' ')
    cypher-shell -a $URI -u $USERNAME -p $PASSWORD -f drop_schema.cypher > /dev/null
else
    echo "No custom indexes or constraints found to drop."
    SCHEMA_COUNT=0
fi

# 5. Clean up
rm drop_schema.cypher

# Calculate elapsed time
ELAPSED_TIME=$(($SECONDS - $START_TIME))

# Print Summary
echo ""
echo "========================================"
echo "Database reset successfully completed!"
echo "Execution time: ${ELAPSED_TIME} seconds"
echo "Summary of removed items:"
echo "   - Nodes: ${NODE_COUNT}"
echo "   - Relationships: ${REL_COUNT}"
echo "   - Schema Objects (Indexes/Constraints): ${SCHEMA_COUNT}"
echo "========================================"
