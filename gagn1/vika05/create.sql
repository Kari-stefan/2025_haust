CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    shipping_address VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15)
);

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE supplier (
    supplier_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100),
    contact_email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15)
);

CREATE TABLE inbound_shipment (
    shipment_id SERIAL PRIMARY KEY,
    supplier_id INT REFERENCES supplier(supplier_id),
    arrival_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL
);

CREATE TABLE outbound_shipment (
    shipment_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customer(customer_id),
    departure_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL
);

CREATE TABLE inventory (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE location (
    location_id SERIAL PRIMARY KEY,
    aisle VARCHAR(10) NOT NULL,
    shelf VARCHAR(10) NOT NULL
);

CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    supplier_id INT REFERENCES supplier(supplier_id),
    weight DECIMAL(10, 2),
    volume DECIMAL(10, 2)
);

DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS outbound_shipment;
DROP TABLE IF EXISTS inbound_shipment;
DROP TABLE IF EXISTS supplier;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS customer;


