CREATE TABLE students (
    student_id INT NOT NULL,
    admission_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE NOT NULL,
    program_name VARCHAR(100) NOT NULL,
    admission_date DATE NOT NULL,
    cgpa DECIMAL(4, 2) NOT NULL,
    student_status VARCHAR(15) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT `uq_admission_number` UNIQUE (admission_number),
	CONSTRAINT `uq_email` UNIQUE (email),
	CONSTRAINT `chk_cgpa` CHECK (cgpa BETWEEN 0.00 AND 10.00)
);
SELECT * FROM students;
INSERT INTO  students( student_id,admission_number,first_name ,last_name,email,phone, date_of_birth, program_name,admission_date,cgpa,student_status,created_at,updated_at) 
VALUES(101,'12216616','Hemanth','kuppili','kuppilihemanth450@gmail.com',
'9502850367','2004-11-04','Computer Science','2026-05-07',7.00,DEFAULT,default,default);