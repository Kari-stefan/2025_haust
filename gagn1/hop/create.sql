CREATE DATABASE warehouse;

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    username VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE CHECK (email LIKE '%_@_%._%'),
    department VARCHAR(255) NOT NULL
);

CREATE TABLE suppliers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(255) UNIQUE NOT NULL,
    contact_first_name VARCHAR(255) NOT NULL,
    contact_last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE CHECK (email LIKE '%_@_%._%'),
    category_id INT,
    CONSTRAINT fk_category
        FOREIGN KEY(category_id)
        REFERENCES categories(id)
        ON DELETE SET NULL
);

CREATE TABLE shipments (
    id SERIAL PRIMARY KEY,
    supplier_id INT NOT NULL,
    reference_code VARCHAR(255) NOT NULL,
    arrival_date DATE NOT NULL,
    CONSTRAINT fk_supplier
        FOREIGN KEY(supplier_id)
        REFERENCES suppliers(id)
        ON DELETE CASCADE
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date_added DATE NOT NULL,
    supplier_id INT NOT NULL,
    weight INT NOT NULL,
    shipment_id INT,
    category_id INT NOT NULL,
    quantity INT DEFAULT 0,
    CONSTRAINT fk_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES suppliers(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_shipment
        FOREIGN KEY (shipment_id)
        REFERENCES shipments(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_category
        FOREIGN KEY (category_id)
        REFERENCES categories(id)
        ON DELETE SET NULL
);

CREATE TABLE storage_areas (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date_created DATE NOT NULL,
    employee_id INT NOT NULL,
    CONSTRAINT fk_employee
        FOREIGN KEY (employee_id)
        REFERENCES employees(id)
        ON DELETE CASCADE
);

CREATE TABLE picking_queues (
    id SERIAL PRIMARY KEY,
    employee_id INT NOT NULL,
    CONSTRAINT fk_employee
        FOREIGN KEY (employee_id)
        REFERENCES employees(id)
        ON DELETE CASCADE
);

CREATE TABLE assigned_suppliers (
    employee_id INT NOT NULL,
    supplier_id INT NOT NULL,
    CONSTRAINT fk_employee
        FOREIGN KEY (employee_id)
        REFERENCES employees(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES suppliers(id)
        ON DELETE CASCADE,
    PRIMARY KEY (employee_id, supplier_id)
);

CREATE TABLE storage_products (
    product_id INT NOT NULL,
    storage_area_id INT NOT NULL,
    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_storage_area
        FOREIGN KEY (storage_area_id)
        REFERENCES storage_areas(id)
        ON DELETE CASCADE,
    PRIMARY KEY (product_id, storage_area_id)
);

CREATE TABLE queued_products (
    product_id INT NOT NULL,
    queue_id INT NOT NULL,
    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_queue
        FOREIGN KEY (queue_id)
        REFERENCES picking_queues(id)
        ON DELETE CASCADE,
    PRIMARY KEY (product_id, queue_id)
);

