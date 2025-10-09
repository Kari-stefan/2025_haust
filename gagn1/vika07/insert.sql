INSERT INTO customers (first_name, last_name, email, phone, address)
VALUES ('John', 'Doe', 'Johndoe@gmail.com', '12345678', '123 Main St, Cityville');

INSERT INTO pizzas (name, description, price, is_vegan)
VALUES
('Margherita', 'Classic pizza with tomato sauce, mozzarella, and basil', 50000, TRUE),
('BBQ Chicken', 'Grilled chicken with BBQ sauce and red onions', 65000, FALSE),
('Hawaiian', 'Ham and pineapple on a cheese and tomato base', 60000, FALSE),
('Four Cheese', 'A blend of mozzarella, cheddar, parmesan, and gorgonzola', 70000, TRUE),
('Meat Lovers', 'Loaded with pepperoni, sausage, ham, and bacon', 75000, FALSE);

INSERT INTO ingredients (name, portion_size, price, is_vegan)
VALUES
('Pizza Sauce', 20, 10, TRUE),
('Cream Cheese', 15, 15, TRUE),
('Mozzarella', 30, 20, TRUE),
('Pepperoni', 25, 25, FALSE),
('Vegetables', 20, 10, TRUE),
('Chicken', 30, 30, FALSE);

INSERT INTO pizza_ingredients (pizza_id, ingredient_id)
VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 4),
(2, 6),
(3, 1),
(3, 3),
(3, 5);

INSERT INTO pizza_orders (idPizza, idCustomer)
VALUES (2, 1);


DELETE FROM pizza_orders;
DELETE FROM pizza_ingredients;
DELETE FROM pizzas;
DELETE FROM ingredients;