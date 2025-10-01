CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(55) NOT NULL,
    last_name VARCHAR(55) NOT NULL,
    address VARCHAR(200) NOT NULL
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE ingredients (
    ingredient_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    portion_size SMALLINT,
    is_vegan BOOLEAN,
    price INTEGER
);

CREATE TABLE pizzas (
    pizza_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(255),
    price INTEGER,
    is_vegan BOOLEAN
);


DROP TABLE IF EXISTS pizzas
DROP TABLE IF EXISTS ingredients 
DROP TABLE IF EXISTS customers 
DROP TABLE IF EXISTS employees 