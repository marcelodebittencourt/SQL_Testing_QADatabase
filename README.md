# SQLTestingQADatabase

A database created to practice SQL commands using data related to Testing and QA area.

## Goals 

This repository was created for educational purposes. You will be able to create, populate and execute SQL commands.

## Relational database management system (RDMS)

* MySQL (https://dev.mysql.com/downloads/mysql/)

## Entity-Relation Diagram

* Tool used to build: MySQL Workbench (https://www.mysql.com/products/workbench/)
* Diagram available at folder "ERDiagram".

## Pre-requisites to run SQL from this repository

* MySQL Community Server >= 8.0.22
* MySQL Workbench >= 8.0.22 (explicitly verify that it is checked to be installed in the MySQL Community Server installation options).

## Preparing the repository

Open and run the following scripts on MySQL Workbench SQL editor:

1. Creation schema script "1_SQLTestingQASchemaCreationScript.sql". Expected: Your sqltestingqa schema is created and listed in the MySQL Workbench left panel called SCHEMAS.

2. Load data schema script "2_SQLTestingQASchemaLoadDataScript.sql". Expected: Your tables are loaded with data.

## SQL commands

All SQL commands are available in the "3_SQLSelectScripts.sql" file.

## Specific languages

* DDL (Data Definition Language) - database object interaction: CREATE, ALTER e DROP
* DML (Data Manipulation Language) - data inside tables interaction: INSERT, DELETE e UPDATE
* DQL (Data Query Language): SELECT
* DTL (Data Transaction Language) - transaction controlling: BEGIN TRANSACTION, COMMIT E ROLLBACK
* DCL (Data Control Language) - database security controlling: GRANT, REVOKE E DENY.