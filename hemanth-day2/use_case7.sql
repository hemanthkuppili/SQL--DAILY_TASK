-- use_case7 --
 CREATE TABLE vehicles( vehicle_id INT NOT NULL AUTO_INCREMENT,
 registration_number VARCHAR(20) NOT NULL,
 owner_name VARCHAR(120) NOT NULL,
 manufacturer VARCHAR(80) NOT NULL,
 model VARCHAR(80) NOT NULL,
 vehicle_type VARCHAR(20) NOT NULL DEFAULT 'CAR',
 fuel_type VARCHAR(20) NOT NULL DEFAULT 'PETROL',
 manufacture_year YEAR NOT NULL,
 purchase_date DATE,
 color VARCHAR(40) NOT NULL,
 odometer_KM INT NOT NULL DEFAULT 0,
 insurance_expiry DATE ,
 vehicle_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 CONSTRAINT `pk_vehicle_id` UNIQUE(vehicle_id),
 CONSTRAINT `uk_registration_number` UNIQUE (registration_number),
 CONSTRAINT `chk_odometer_nun_negative` CHECK (odometer_KM>=0)
 );
  SELECT* FROM vehicles;
  INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, 
  fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry,
  vehicle_status)
VALUES ('VE009', 'mani', 'Royal Enfield', 'Classic 350', 'MOTORCYCLE', 'PETROL',
 2021, '2021-04-16', 'Black', 5000, '2026-04-16', 'IN_SERVICE');
 INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, 
  fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry,
  vehicle_status)
VALUES ('VE010', 'Rahul', 'Toyota', 'camry', 'CAR', 'DIESEL',
 2020, '2022-04-16', 'PINK', 5000, '2027-04-16', 'SOLD');
  INSERT INTO vehicles (registration_number, owner_name, manufacturer, model, vehicle_type, 
  fuel_type, manufacture_year, purchase_date, color, odometer_km, insurance_expiry
 )
VALUES ('VE011', 'Pavan', 'Tesla', 'semi', 'TRUCK', 'CNG',
 2024, '2024-04-16', 'PINK', 5000, '2027-04-16' );