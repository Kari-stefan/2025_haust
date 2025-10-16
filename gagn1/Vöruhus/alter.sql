ALTER TABLE inbound_shipments
ADD CONSTRAINT fk_supplier
FOREIGN KEY (supplier_id)
REFERENCES suppliers(supplier_id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE outbound_shipments
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE inventory
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id)
REFERENCES products(product_id)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE inventory
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id)
REFERENCES locations(location_id)
ON UPDATE CASCADE
ON DELETE CASCADE;

INNER JOIN 

