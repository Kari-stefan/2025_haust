INSERT INTO customers (customer_id, first_name, last_name, email, phone, address)
VALUES (1, 'John', 'Doe', 'Johndoe@gmail.com', '12345678', '123 Main St, Cityville');


INSERT INTO employees (employee_id, first_name, last_name, position, hire_date)
VALUES (1, 'Emily', 'Davis', 'Manager', '2020-01-15'),
(2, 'Michael', 'Wilson', 'Chef', '2019-03-22'),
(3, 'Sarah', 'Miller', 'Waitstaff', '2021-06-10'),
(4, 'David', 'Garcia', 'Delivery Driver', '2018-11-05'),
(5, 'Laura', 'Martinez', 'Cashier', '2022-02-18');



INSERT INTO pizzas (pizza_id, name, description, price, is_vegan)
VALUES (1, 'Margherita', 'Classic pizza with tomato sauce, mozzarella, and basil', 50000, TRUE),
    (2, 'BBQ Chicken', 'Grilled chicken with BBQ sauce and red onions', 65000, FALSE),
    (3, 'Hawaiian', 'Ham and pineapple on a cheese and tomato base', 60000, FALSE),
    (4, 'Four Cheese', 'A blend of mozzarella, cheddar, parmesan, and gorgonzola', 70000, TRUE),
    (5, 'Meat Lovers', 'Loaded with pepperoni, sausage, ham, and bacon', 75000, FALSE),
    (6, 'Veggie Supreme', 'Bell peppers, onions, mushrooms, olives, and tomatoes', 55000, TRUE),
    (7, 'Buffalo Chicken', 'Spicy buffalo chicken with blue cheese dressing', 68000, FALSE),
    (8, 'Mediterranean', 'Feta cheese, olives, spinach, and sun-dried tomatoes', 62000, TRUE),
    (9, 'Pesto Delight', 'Pesto sauce with chicken, sun-dried tomatoes, and mozzarella', 72000, FALSE),
    (10, 'Classic Pepperoni', 'Pepperoni on a cheese and tomato base', 58000, FALSE);





INSERT INTO ingredients (name, portion_size, price, is_vegan)
VALUES ('Pizza Sauce', 20, 10, TRUE),
    ('Cream Cheese', 15, 15, TRUE),
    ('Mozzarella', 30, 20, TRUE),
    ('Pepperoni', 25, 25, FALSE),
    ('Vegetables', 20, 10, TRUE),
    ('Chicken', 30, 30, FALSE);

INSERT INTO pizza_orders (idPizza, idCustomer)
VALUES (2, 3),

SELECT * from ingredients;
SELECT * from pizzas;
SELECT * from customers;
SELECT * from employees;


DELETE FROM pizzas;
DELETE FROM customers;
DELETE FROM employees;
DELETE FROM ingredients;
DELETE FROM pizza_orders;
