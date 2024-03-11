CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
cars_id INT NOT NULL AUTO_INCREMENT,
car_vin VARCHAR(20),
manufacture VARCHAR(20),
model VARCHAR(20),
year INT(4),
color VARCHAR(20),
PRIMARY KEY (car_vin)
);

DROP TABLE IF EXISTS salespersons;

CREATE TABLE salespersons (
salespersons_id INT NOT NULL AUTO_INCREMENT,
staff_id  CHAR(10),
name VARCHAR(20),
store VARCHAR(20),
PRIMARY KEY (staff_id)
);


DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
customers_id INT NOT NULL AUTO_INCREMENT,
cust_id CHAR(10),
cust_name VARCHAR(20),
cust_phone INT(10),
cust_email VARCHAR(20),
cust_address VARCHAR(20),
cust_city VARCHAR(20),
cust_state CHAR(2),
cust_country VARCHAR(20),
cust_zipcode CHAR(5),
PRIMARY KEY (cust_id)
);


DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices (
invoices_id INT NOT NULL AUTO_INCREMENT,
cust_id  CHAR(10),
invoice_number INT(12),
date DATETIME,
car_vin VARCHAR(20),
staff_id CHAR(10),
PRIMARY KEY (invoices_id),
FOREIGN KEy (cust_id) REFERENCES customers(cust_id),
FOREIGN KEy (staff_id) REFERENCES salespersons(staff_id),
FOREIGN KEy (car_vin) REFERENCES cars(car_vin)
);


show tables
