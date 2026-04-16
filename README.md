# Neo4j Playground

Welcome to the Neo4j Playground! This repository is a dedicated workspace for building, testing, and sharing utilities that make managing Neo4j databases easier. It features practical scripts and tools: starting with our automated database reset script—designed to help Neo4j customers, data engineers, and data scientists streamline their workflows and operate their graphs more efficiently.

## Neo4j Aura Reset Scripts

The `reset_aura.sh` and `reset_aura_v2.sh` scripts provide an automated way to reset a Neo4j Aura database. This is a common workflow for those building, testing, or cleaning up data for their Neo4j projects.

### Getting Started

To reset your Neo4j Aura instance, you can use the `reset_aura_v2.sh` script in one of two ways.

#### 1. Using a Credentials File (Recommended)

When you create a new Neo4j Aura instance, you are typically prompted to download a credentials file (e.g., `Neo4j-27ad415a-Created-2025-11-12.txt`). This script can parse that file directly:

```bash
./reset_aura_v2.sh <path_to_credentials_file.txt>
```

A sample file format is provided in [Neo4j-Aura-Credentials-Sample.txt](./Neo4j-Aura-Credentials-Sample.txt).

#### 2. Passing Arguments Directly

You can also pass the URI, username, and password directly as arguments:

```bash
./reset_aura_v2.sh <username> <password> <aura_uri>
```

### What the Scripts Do

1.  **Count Statistics:** Gathers counts of nodes and relationships to show a summary of what's being removed.
2.  **Delete Data:** Removes all nodes and relationships using transactions for efficiency.
3.  **Wipe Schema:** Automatically drops all custom constraints and indexes.
4.  **Summary:** Provides a final report of the reset operation.

### Prerequisites

- [cypher-shell](https://neo4j.com/docs/operations-manual/current/tools/cypher-shell/) must be installed and available in your system path.

