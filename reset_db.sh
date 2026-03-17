#!/bin/bash
# Usage: ./reset_aura.sh <username> <password> <aura_uri>

USERNAME=$1
PASSWORD=$2
URI=$3

echo "Starting database wipe..."

# 1. Delete all data
echo "Deleting nodes and relationships..."
cypher-shell -a $URI -u $USERNAME -p $PASSWORD --format plain "MATCH (n) CALL { WITH n DETACH DELETE n } IN TRANSACTIONS OF 10000 ROWS;"

# 2. Fetch schema and dynamically generate DROP statements into a temporary file
echo "Fetching schema drops..."

# Get constraint drops
cypher-shell -a $URI -u $USERNAME -p $PASSWORD --format plain "SHOW CONSTRAINTS YIELD name RETURN 'DROP CONSTRAINT ' + name + ';';" | tail -n +2 | tr -d '"' > drop_schema.cypher

# Get standalone index drops (ignoring constraint-backed indexes)
cypher-shell -a $URI -u $USERNAME -p $PASSWORD --format plain "SHOW INDEXES YIELD name, type, owningConstraint WHERE type <> 'LOOKUP' AND owningConstraint IS NULL RETURN 'DROP INDEX ' + name + ';';" | tail -n +2 | tr -d '"' >> drop_schema.cypher

# 3. Execute the dynamically generated DROP statements
if [ -s drop_schema.cypher ] && grep -q "DROP" drop_schema.cypher; then
    echo "Executing schema drops..."
    cypher-shell -a $URI -u $USERNAME -p $PASSWORD -f drop_schema.cypher
else
    echo "No custom indexes or constraints found to drop."
fi

# 4. Clean up
rm drop_schema.cypher

echo "Database reset complete."
