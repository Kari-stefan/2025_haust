INSERT INTO suppliers (name, contact_name, phone, address)
VALUES ('Amazon', 'Jeff Bezos', '1800-123-4567', '410 Terry Ave N, Seattle, WA 98109'),
    ('Walmart', 'Doug McMillon', '1-800-WALMART', '702 SW 8th St, Bentonville, AR 72716'),
    ('Costco', 'Craig Jelinek', '1-800-774-2678', '999 Lake Dr, Issaquah, WA 98027'),
    ('IKEA', 'Jesper Brodin', '1-888-888-4532', '420 Alan Wood Rd, Conshohocken, PA 19428');

DELETE FROM suppliers;


INSERT INTO customers (first_name, last_name, email, phone, address)
VALUES ('Hilmir', 'Blær', 'Hilmir@gmail.com', '7672008', 'Þorláksgeisli 20'),
    ('Kári', 'Sigurðsson', 'Kari@gmail.com', '7672009', 'Laugavegur 1');


INSERT INTO inbound_shipments (shipment_date, total_cost)
VALUES ('2023-10-01', 5000),
    ('2023-10-05', 3000),
    ('2023-10-10', 4000);


INSERT INTO outbound_shipments (customer_id, shipment_date)
VALUES (1, '2023-10-15'),
    (2, '2023-10-20');

INSERT INTO products  (name, description, price, stock_quantity, weight)
VALUES ('Laptop', 'High performance laptop', 1200, 50, 2),
    ('Smartphone', 'Latest model smartphone', 800, 100, 0.5),
    ('Headphones', 'Noise-cancelling headphones', 200, 150, 0.3),
    ('Monitor', '4K UHD monitor', 400, 30, 5);

INSERT INTO locations (aisle, shelf)
VALUES ('A1', 'S1'),
    ('A1', 'S2'),
    ('A2', 'S1'),
    ('A2', 'S2');

INSERT INTO inventory (product_id, location_id, quantity, last_updated)
VALUES (1, 1, 20, '2023-10-01'),
    (2, 2, 50, '2023-10-02'),
    (3, 3, 70, '2023-10-03'),
    (4, 4, 15, '2023-10-04');



DELETE FROM suppliers;
SELECT * FROM suppliers;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM employee;
SELECT * FROM inbound_shipments;
SELECT * FROM outbound_shipments;
