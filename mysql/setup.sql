-- 1. Navigate to this file’s parent folder, mysql, via your CLI
-- 2. Log in to MySQL as root: mysql -u root -p
-- 3. Source the setup file: source setup.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

USE music;

source create-tables.sql;
source insert-values.sql;
