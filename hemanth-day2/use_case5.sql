-- usecase5--
  CREATE  TABLE PatientReg(patient_id INT NOT NULL AUTO_INCREMENT,
  patient_number VARCHAR(15)NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  date_of_joining DATE NOT NULL,
  biological_sex VARCHAR(20) NOT NULL,
  blood_group VARCHAR(20),
  phone VARCHAR(15) NOT NULL,
  email VARCHAR(120),
  emergency_contact_name VARCHAR(100) NOT NULL,
  emergency_contact_phone VARCHAR(15)NOT NULL,
  allergies  TEXT,
  patient_status  VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
 registered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
 CONSTRAINT `pk_patient_id` PRIMARY KEY (patient_id),
 CONSTRAINT `uk_patient_number` UNIQUE (patient_number),
 CONSTRAINT chk_biological_sex CHECK (biological_sex IN ('FEMALE', 'MALE', 'INTERSEX', 'NOT_DISCLOSED')),
 CONSTRAINT chk_blood_group CHECK (blood_group IS NULL OR blood_group IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'))
 
);
SELECT *FROM PatientReg;
INSERT INTO PatientReg(
    patient_id, patient_number, first_name, last_name, date_of_joining,
    biological_sex, blood_group, phone, email,
    emergency_contact_name, emergency_contact_phone, allergies,patient_status,registered_at
) VALUES (
    101,'PAT-10001', 'Jane', 'Doe', '1992-05-14',
    'FEMALE', 'O+', '555-0198', 'jane.doe@example.com',
    'John Doe', '555-0199', 'Penicillin allergy',DEFAULT,DEFAULT
);
INSERT INTO PatientReg(
     patient_number, first_name, last_name, date_of_joining,
    biological_sex, blood_group, phone,
    emergency_contact_name, emergency_contact_phone, allergies
) VALUES (
    'PAT-10002', 'Jane', 'Doe', '1992-05-14',
    'FEMALE', 'O+', '555-0198', 
    'John Doe', '555-0199', 'Penicillin allergy'
);
DROP TABLE PatientReg;