CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(55) NOT NULL,
    last_name VARCHAR(55) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200) NOT NULL
);

CREATE TABLE pizza_orders (
    id SERIAL PRIMARY KEY,
    idPizza INT REFERENCES pizzas(pizza_id),
    idCustomer INT REFERENCES customers(customer_id),
    
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

CREATE TABLE pizza_ingredients (
    pizza_id INT REFERENCES pizzas(pizza_id),
    ingredient_id INT REFERENCES ingredients(ingredient_id)
);


DROP TABLE IF EXISTS pizzas;
DROP TABLE IF EXISTS ingredients;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS employees; 