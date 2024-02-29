CREATE TABLE students (
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	lat_name VARCHAR(50),
	homeroom_number INTEGER,
	phone VARCHAR(20) UNIQUE NOT NULL,
	email VARCHAR(60) UNIQUE,
	graduation_year INTEGER)
	
	
CREATE TABLE teachers (
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	lat_name VARCHAR(50),
	homeroom_number INTEGER,
	department VARCHAR(50),
	phone VARCHAR(20) UNIQUE NOT NULL,
	email VARCHAR(60) UNIQUE)

ALTER TABLE teachers
RENAME COLUMN lat_name to last_name

ALTER TABLE students
RENAME COLUMN lat_name to last_name

INSERT INTO students (first_name, last_name, phone, graduation_year, homeroom_number)
VALUES ('Mark', 'Watney', '777-555-1234', 2035, 5)

SELECT * FROM students

ALTER TABLE teachers
RENAME COLUMN student_id to teacher_id

INSERT INTO teachers (first_name, last_name, phone, email, homeroom_number, department)
VALUES ('Jonas', 'Salk', '777-555-4321', 'jsalk@school.org', 5, 'Biology')

SELECT * FROM teachers

