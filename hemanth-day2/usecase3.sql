--- usecase3-- day2;
  CREATE TABLE Customer(customer_id INT NOT NULL AUTO_INCREMENT,
  customer_code VARCHAR(12) NOT NULL, first_name VARCHAR(50)NOT NULL,
  last_name VARCHAR(50)NOT NULL , 
  email VARCHAR(120)NOT NULL, 
  phone VARCHAR(15),
  date_of_birth DATE , 
  city VARCHAR(80) NOT NULL,
  state VARCHAR(80) NOT NULL, 
  postal_code VARCHAR(12) NOT NULL,
  customer_type VARCHAR(15)NOT NULL DEFAULT 'REGULAR',
  credit_limit DECIMAL(12,2) NOT NULL DEFAULT 0.00,
  is_active BOOLEAN NOT NULL DEFAULT TRUE, 
  registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT `pk_customer_id` PRIMARY KEY(customer_id),
  CONSTRAINT `uk_customer_code` UNIQUE (customer_code),
  CONSTRAINT `uk_email` UNIQUE (email)
  );
  SELECT * FROM Customer;
  INSERT INTO Customer(customer_id,customer_code,first_name, last_name,email, 
  phone,date_of_birth,city, state,postal_code,customer_type,credit_limit,is_active,registered_at ) 
  VALUES(101,'Cc001','devansh','kumar','devansh@gmail.com',9875537352,'2005-05-21','vizag',
  'Andhra pradesh','5352001',DEFAULT,100000.00,DEFAULT,DEFAULT);
  INSERT INTO Customer(customer_code,first_name, last_name,email, 
  phone,date_of_birth,city, state,postal_code,credit_limit ) 
  VALUES('Cc002','Darling','Prabhas','prabhas@gmail.com',9875537352,'2005-05-21','vizag',
  'Andhra pradesh','5352001',100000.00);