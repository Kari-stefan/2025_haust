/* Shows which products are in which storage area */
SELECT sa.name AS storage_area_name, STRING_AGG(p.name, ', ') AS products
FROM products p
INNER JOIN storage_products sp
    ON p.id = sp.product_id
INNER JOIN storage_areas sa
    ON sp.storage_area_id = sa.id
GROUP BY sa.id;


/* Shows how many employees are assigned to each supplier */
SELECT s.company_name AS supplier_name, COUNT(asup.employee_id) AS total_assigned_employees
FROM suppliers s
INNER JOIN assigned_suppliers asup
    ON s.id = asup.supplier_id
GROUP BY s.id;


/* Shows products that belong to the category 'Machinery' */
SELECT p.name AS product_name, c.name AS category_name
FROM products p
INNER JOIN categories c
    ON p.category_id = c.id
WHERE c.name = 'Machinery';
