 -- usecase2-- DAY2;
use  cg_hyd_jfs_058;
   
CREATE TABLE Product(product_id INT NOT NULL AUTO_INCREMENT,
sku VARCHAR(20) NOT NULL,
product_name VARCHAR(150) NOT NULL,
category VARCHAR(80) NOT NULL,
brand VARCHAR(80),
unit_price DECIMAL(12,2) NOT NULL,
quantity_in_stock INT NOT NULL DEFAULT 0,
reorder_level INT NOT NULL DEFAULT 5,
manufacture_date DATE,
expiry_date DATE,
product_status varchar(15) NOT NULL DEFAULT'ACTIVE',
create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
CONSTRAINT `pk_product_id` PRIMARY KEY (product_id),
CONSTRAINT `uq_sku` UNIQUE (sku),
CONSTRAINT `chk_unit_price` CHECK (unit_price >0),
CONSTRAINT `chk_stock` CHECK (quantity_in_stock>=0),
CONSTRAINT `chk_reorder` CHECK(reorder_level >=0),
CONSTRAINT `chk_date` CHECK (expiry_date IS NULL OR manufacture_date IS  NULL OR 
expiry_date >= manufacture_date)
);
SELECT * FROM Product;
INSERT INTO Product(sku ,product_name,category,brand,unit_price,quantity_in_stock
,reorder_level,manufacture_date,expiry_date,product_status ,create_at,updated_at) VALUES('SKU001',
'Rice 5KG','groceries','lalitha',500,20,5,'2026-09-23','2027-09-23',DEFAULT,DEFAULT,DEFAULT);
INSERT INTO Product(sku ,product_name,category,brand,unit_price,quantity_in_stock
,reorder_level,manufacture_date,expiry_date) VALUES('SKU002',
'batani 5KG','groceries','loss',50.00,25,4,'2026-09-23','2026-10-23');
INSERT INTO Product(sku ,product_name,category,brand,unit_price,
manufacture_date,expiry_date) VALUES('SKU003',
'batani 5KG','groceries','loss',50.00,'2026-09-23','2026-10-23');
DROP TABLE Product;