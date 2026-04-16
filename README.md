# Neo4j Playground

Welcome to the Neo4j Playground! This repository is a dedicated workspace for building, testing, and sharing utilities that make managing Neo4j databases easier.

## Directory Structure

- [aura_reset/](./aura_reset/): Scripts for resetting Neo4j Aura instances.
- [sample_data/](./sample_data/): Cypher scripts for loading sample records into Neo4j.

---

## 1. Neo4j Aura Reset Scripts

Located in: `aura_reset/`

The `reset_aura.sh` and `reset_aura_v2.sh` scripts provide an automated way to reset a Neo4j Aura database.

### Getting Started

To reset your Neo4j Aura instance, use `reset_aura_v2.sh` in one of two ways:

#### A. Using a Credentials File (Recommended)
Pass the path to the credentials file you downloaded when creating your Aura instance:
```bash
./aura_reset/reset_aura_v2.sh <path_to_credentials_file.txt>
```
See [Neo4j-Aura-Credentials-Sample.txt](./aura_reset/Neo4j-Aura-Credentials-Sample.txt) for the expected format.

#### B. Passing Arguments Directly
```bash
./aura_reset/reset_aura_v2.sh <username> <password> <aura_uri>
```

---

## 2. Sample Data Loading

Located in: `sample_data/`

This folder contains Cypher scripts to populate your database with initial data:

1.  **01_constraints.cypher**: Sets up necessary unique constraints.
2.  **02_nodes.cypher**: Creates nodes (entities).
3.  **03_relationships.cypher**: Creates relationships between nodes.

### Loading the Sample Data
You can use `cypher-shell` to load these files:
```bash
cypher-shell -a <aura_uri> -u <username> -p <password> -f sample_data/01_constraints.cypher
cypher-shell -a <aura_uri> -u <username> -p <password> -f sample_data/02_nodes.cypher
cypher-shell -a <aura_uri> -u <username> -p <password> -f sample_data/03_relationships.cypher
```
