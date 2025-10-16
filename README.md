# BDOSS+ — Updated Census Database of Social Health Organizations (Brazil)

**Author:** Henrique Bracarense  
**Institutional partners:** Ministry of Management and Innovation in Public Services (MGI) and Federal Court of Accounts (TCU)  
**Project:** National update of the census of Social Health Organizations (OSS)  
**Dashboard:** [Power BI Report (PBIX)](https://drive.proton.me/urls/YBQQKC4E94#IpCV6Gv3PsKb)  
**Languages:** Python, SQL  
**Database:** PostgreSQL  
**Scope:** Automated reconstruction and enrichment of the BDOSS (Base das Organizações Sociais de Saúde)

---

## Overview

**BDOSS+** is a data integration and automation system that updates and extends the **Base das Organizações Sociais de Saúde (BDOSS)** — Brazil’s national census of Social Health Organizations operating under the **Unified Health System (SUS)**.  

Developed by **Henrique Bracarense**, this version was carried out in partnership with the **Ministry of Management and Innovation in Public Services (MGI)** and with **data sharing from the Federal Court of Accounts (TCU)**.  

It improves the coverage, traceability, and analytical value of the BDOSS dataset by combining administrative registries, financial data, and institutional metadata, feeding directly into the national dashboard available in Power BI.

---

## Objectives

1. **Modernize** the data architecture of BDOSS for reproducible updates.  
2. **Integrate** MGI and TCU administrative data with existing OSS records.  
3. **Standardize** classification and codification of OSS, facilities, and contracts.  
4. **Automate** SQL schema creation, validation, and database population via Python.  
5. **Provide** transparent, replicable data products for public management research.

---

## Repository Structure

```
BDOSS_plus/
├─ Scripts/
│  ├─ main.py                # Pipeline orchestrator (end-to-end execution)
│  ├─ config.py              # Environment paths and database configuration
│  ├─ general_functions.py   # Utility functions for logging, validation, and cleaning
│  ├─ load_functions.py      # PostgreSQL connectors and upload routines
│  ├─ sql_json_creation.py   # Generates SQL DDL and JSON schema from data dictionary
│  └─ Recursos/
│     └─ SQLs/Tabelas/       # Auto-generated SQL table definitions for BDOSS+ schema
├─ Data/
│  ├─ dictionary.xlsx        # Variable metadata: names, types, and comments
│  ├─ inputs/                # Raw CSV and Excel sources (MGI, TCU, CNES)
│  └─ outputs/               # Cleaned, harmonized tables and logs
└─ README_BDOSS_PLUS.md      # This document
```

---

## Pipeline Description

### **1. Dynamic Schema Creation**
Script: `sql_json_creation.py`

- Reads metadata from the Excel dictionary.
- Creates SQL scripts for all BDOSS+ tables.
- Exports parallel JSON schemas for type consistency across Python and PostgreSQL.

### **2. Database Connection and Table Creation**
Script: `load_functions.py`

- Connects to PostgreSQL via `sqlalchemy` and `psycopg2`.
- Runs all DDLs in `/Recursos/SQLs/Tabelas/`.
- Logs successful creation or flag errors in structure.

### **3. Data Ingestion and Cleaning**
Script: `main.py`

- Reads multiple CSV files (state and municipal levels).  
- Applies cleaning functions from `general_functions.py` (null handling, type casting, string normalization).  
- Loads the harmonized tables into PostgreSQL.

### **4. Data Enrichment**
- Merges OSS registry data with **TCU** contract information.  
- Cross-links institutional identifiers (CNPJ, CNES, municipality codes).  
- Adds derived variables (management type, contract duration, inflation-adjusted values).

### **5. Output and Visualization**
- Final tables are used as the backend for the **Power BI BDOSS+ dashboard**.  
- Includes national, state, and municipal-level summaries.  

**Dashboard:** [Download PBIX](https://drive.proton.me/urls/YBQQKC4E94#IpCV6Gv3PsKb)

---

## Example `.env` Configuration

```
PATH_FOLDER=/path/to/project
SQL_FOLDER=SQLs
TABLES_FOLDER=Tabelas
JSON_FOLDER=JSONs
PATH_RESOURCES=Recursos
USER=postgres
PASSWORD=*****
HOST=localhost
PORT=5432
DATABASE=bdoss_plus
```

---

## Dependencies

| Category | Packages |
|-----------|-----------|
| Data manipulation | `pandas`, `numpy` |
| Database interface | `sqlalchemy`, `psycopg2` |
| Excel I/O | `openpyxl`, `xlrd` |
| Environment variables | `python-dotenv` |
| JSON serialization | native `json` |
| Logging | native `logging` |

Install all with:

```bash
pip install pandas numpy sqlalchemy psycopg2-binary openpyxl xlrd python-dotenv
```

---

## How to Run

1. Set up PostgreSQL locally (create database `bdoss_plus`).  
2. Configure your `.env` file with proper credentials.  
3. Run the main script:

```bash
cd Scripts
python main.py
```

4. The log file will record all operations; check `/Data/outputs/` for results.

---

## Outputs

- `public.tb_oss` — Master OSS registry (with MGI/TCU cross-references).  
- `public.tb_contratos` — Management contract details.  
- `public.tb_entidades` — Institutional classifications (OS, OSC, OSCIP, SSA).  
- `public.tb_inflacao` — Inflation adjustment table for temporal normalization.  
- `public.tb_servicos` — Specialized services, linked via CNES.  
- `public.tb_forma_contratacao` — Contracting modalities.  

---

## Citation

> **Bracarense, Henrique** (2025). *BDOSS+ — Updated Census Database of Social Health Organizations (Brazil).*  
> Developed in partnership with the **Ministry of Management and Innovation in Public Services (MGI)** and the **Federal Court of Accounts (TCU)**.  
> URL: https://drive.proton.me/urls/YBQQKC4E94#IpCV6Gv3PsKb

---

## License

This project is distributed under an **MIT-style license** for academic and public-interest use.  
Attribution is required when using the BDOSS+ scripts, data structures, or derived indicators.
