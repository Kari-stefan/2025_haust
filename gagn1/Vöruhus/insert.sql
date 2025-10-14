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


DELETE FROM suppliers;
SELECT * FROM suppliers;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM employee;
SELECT * FROM inbound_shipments;
SELECT * FROM outbound_shipments;
