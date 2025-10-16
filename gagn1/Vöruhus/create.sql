CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200)
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(55) NOT NULL,
    last_name VARCHAR(55) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200) NOT NULL
);

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE inbound_shipments (
    shipment_id SERIAL PRIMARY KEY,
    supplier_id INT,
    shipment_date DATE NOT NULL,
    total_cost INTEGER,
    status VARCHAR(50)
);

CREATE TABLE outbound_shipments (
    shipment_id SERIAL PRIMARY KEY,
    customer_id INT,
    shipment_date DATE NOT NULL,
    status VARCHAR(50)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price INTEGER NOT NULL,
    stock_quantity INTEGER NOT NULL,
    weight INTEGER NOT NULL
);

CREATE TABLE locations (
    location_id SERIAL PRIMARY KEY,
    aisle VARCHAR(10) NOT NULL,
    shelf VARCHAR(10) NOT NULL
);
CREATE TABLE inventory (
    product_id INT,
    location_id INT,
    quantity INT NOT NULL,
    last_updated VARCHAR(10) NOT NULL
);


SELECT * FROM outbound_shipments;



DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS outbound_shipments;
DROP TABLE IF EXISTS inbound_shipments;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS suppliers;
