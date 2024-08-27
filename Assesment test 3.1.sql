CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	homeroom_number VARCHAR(50),
	department VARCHAR(50),
	phone VARCHAR(50) NOT NULL UNIQUE,
	email VARCHAR(50) UNIQUE
	)