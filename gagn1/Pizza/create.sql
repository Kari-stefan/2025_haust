
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(55) NOT NULL,
    last_name VARCHAR(55) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200) NOT NULL
);

CREATE TABLE pizzas (
    pizza_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(255),
    price INTEGER,
    is_vegan BOOLEAN
);

CREATE TABLE ingredients (
    ingredient_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    portion_size SMALLINT,
    is_vegan BOOLEAN,
    price INTEGER
);

CREATE TABLE pizza_ingredients (
    pizza_id INT,
    ingredient_id INT
);

CREATE TABLE pizza_orders (
    id SERIAL PRIMARY KEY,
    idPizza INT,
    idCustomer INT
);






