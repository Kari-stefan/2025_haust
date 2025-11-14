INSERT INTO categories (name) 
VALUES 
('Electronics'), 
('Furniture'), 
('Clothing'), 
('Food'), 
('Machinery');


INSERT INTO employees (username, email, department)
VALUES ('jonas123', 'J@yahoo.com', 'Logistics'),
    ('anna456', 'Anna@gmail.com', 'Inventory'),
    ('pesi789', 'Peturjohann@hotmail.com', 'Procurement');


INSERT INTO suppliers (company_name, contact_first_name, contact_last_name, email, category_id)
VALUES ('TechWorld Ltd.', 'Abel', 'Tesfaye', 'techworld@gmail.com', 1),
    ('HomeStyle Co.', 'Dan', 'Reynolds', 'homestyle@gmail.com', 2),
    ('UrbanWear Inc.', 'Kendrick', 'Duckworth', 'urbanwear@gmail.com', 3),
    ('Gourmet Foods', 'Francis', 'Sinatra', 'gourmetfoods@gmail.com', 4),
    ('Beethoven Machinery', 'Ludwig', 'Beethoven', 'beethovenmachinery@gmail.com', 5);


INSERT INTO shipments (supplier_id, reference_code, arrival_date)
VALUES (1, 'TW-2020-AH', '2020-03-20'),
    (2, 'HS-2017-EV', '2017-06-23'),
    (3, 'UW-2017-DM', '2017-04-14'),
    (4, 'GF-1955-WH', '1955-04-25'),
    (5, 'BM-1824-SN', '1824-05-07');


INSERT INTO products (name, date_added, supplier_id, weight, shipment_id, category_id, quantity)
VALUES ('4K Television', '2019-11-29', 1, 20000, 1, 1, 150),
    ('Office Chair', '2017-02-01', 2, 8000, 2, 2, 120),
    ('Hoodie', '2017-03-30', 3, 600, 3, 3, 130),
    ('Pasta Pack', '1954-04-01', 4, 500, 4, 4, 80),
    ('Industrial Drill', '1824-05-07', 5, 30000, 5, 5, 50);


INSERT INTO storage_areas (name, date_created, employee_id)
VALUES  ('Zone A', '2025-10-23', 2),
        ('Zone B', '2025-10-23', 1),
        ('Zone C', '2025-10-23', 3);


INSERT INTO picking_queues (employee_id)
VALUES (1),(2),(3);


INSERT INTO storage_products (product_id, storage_area_id)
VALUES  (1,1),(2,1),
        (4,2),(5,2),
        (3,3),(2,3);


INSERT INTO assigned_suppliers (employee_id, supplier_id)
VALUES  (1,3),
        (2,1),
        (3,5);

INSERT INTO queued_products (product_id, queue_id)
VALUES  (1,1),(4,1),
        (2,2),(5,2),
        (4,3),(3,3);
