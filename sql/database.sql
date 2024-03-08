-- database.sql

CREATE DATABASE IF NOT EXISTS calculator_db;
USE calculator_db;

CREATE TABLE IF NOT EXISTS calculations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    operation VARCHAR(10) NOT NULL,
    operand1 DOUBLE NOT NULL,
    operand2 DOUBLE NOT NULL,
    result DOUBLE
);
