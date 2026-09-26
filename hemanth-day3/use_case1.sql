SELECT *FROM students;
INSERT INTO students(admission_number,first_name,last_name,email,phone,date_of_birth,program_name
,admission_date,cgpa,student_status) VALUES('STU26C001','Ananya','Rao','ananya.rao@wxample.test',9876501001,'2007-04-18',
'BSC computer science','2026-07-01',8.40,DEFAULT);
INSERT INTO students(admission_number,first_name,last_name,email,date_of_birth,program_name
,admission_date,cgpa,student_status) VALUES('STU26C002','vivaan','Sharma','vivaan.sharma@wxample.test','2006-07-01',
'BCom','2026-07-01',7.75,DEFAULT);
INSERT INTO students(admission_number,first_name,last_name,email,phone,date_of_birth,program_name
,admission_date,cgpa,student_status) VALUES('STU26C003','Diya','Nair','diya.nair@wxample.test',9876501003,
'2007-02-25','BA Economics','2026-07-02',9.10,DEFAULT);
INSERT INTO students(admission_number,first_name,last_name,email,phone,date_of_birth,program_name
,admission_date,cgpa,student_status) VALUES('STU26C004','kabir','singh','kabir.singh@wxample.test',9876501004,
'2006-08-14','BSc Mathematics','2025-07-01',6.85,'SUSPENDED');
INSERT INTO students(admission_number,first_name,last_name,email,phone,date_of_birth,program_name
,admission_date,cgpa,student_status) VALUES('STU26C005','Tara','Bose','	tara.bose@wxample.test',9876501005,
'2005-09-30','BA History','2024-07-01',5.90,'DROPPED');
-- Attempting to insert a student with an existing email address
INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, 
program_name, admission_date, cgpa,student_status) VALUES ('STU26C006', 'Aarav', 'Patel', 'ananya.rao@wxample.test', '9876501006', 
    '2006-05-10', 'BSc Computer Science', '2026-07-01', 8.00, 'ACTIVE');
-- Attempting to insert with cgpa
INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, 
program_name, admission_date, cgpa, student_status) VALUES ('STU26C007', 'Rishi', 'Patel',
 'Rishi.petal@wxample.test', '9876501006', '2006-05-10', 'BSc Computer Science', '2026-07-01', 10.50,
 'ACTIVE');
-- attempting to inset anohter with status 
INSERT INTO students (admission_number, first_name, last_name, email, phone, date_of_birth, 
program_name, admission_date, cgpa, student_status) VALUES ('STU26C008', 'gopal', 'Patel',
 'gopal.petal@wxample.test', '9876501008', '2006-05-11', 'BSc Computer ', '2026-07-02', 8.50,
 'TRANSFERRED');
 UPDATE students SET cgpa= 8.65 WHERE admission_number='STU26C001';
 UPDATE students SET cgpa = cgpa+0.20 WHERE program_name = 'BSc Computer Science'
 AND student_status = 'ACTIVE' AND cgpa+0.20<10.00;
  UPDATE students SET student_status = 'ACTIVE' WHERE admission_number = 'STU25C004';
  
UPDATE students SET email = 'vivaan.sharma@example.test' WHERE admission_number = 'STU26C003';
SELECT * FROM students WHERE student_status = 'DROPPED';
DELETE FROM students WHERE student_status = 'DROPPED';
INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU-TEMP-001', 'Temp', 'Raja', 'temp.raja@example.test', 9876501000, '2006-08-18', 'BSc Mathematics', '2025-07-01', 8.64, 'TRANSFERRED');
SELECT * FROM students WHERE admission_number= 'STU-TEMP-001';
DELETE FROM students WHERE admission_number= 'STU-TEMP-001';
