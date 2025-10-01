-- Insert a new customer record with first and last name
INSERT INTO customer (customer_id, first_name, last_name, shipping_address, email, phone_number)
VALUES ('1', 'John', 'Doe', '123 Main St, Anytown, USA', 'x@gmail.com', '555-1234');

INSERT INTO customer (customer_id, first_name, last_name, shipping_address, email, phone_number)
VALUES ('12', 'Johny', 'Doee', '1234 Main St, Anytown, USA', 'x2@gmail.com', '556-1234');

INSERT INTO supplier (supplier_id, company_name, contact_name, contact_email, phone_number)
VALUES ('1', 'Acme Corp', 'Alice Smith', 'alice@gmail.com', '555-5678');

INSERT INTO employee (employee_id, first_name, last_name, position, hire_date)
VALUES ('1', 'Jane', 'Doe', 'Warehouse Manager', '2023-01-15');

SELECT * FROM employee;
SELECT * FROM supplier;
SELECT * FROM customer;


