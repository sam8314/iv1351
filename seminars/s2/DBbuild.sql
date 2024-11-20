 
\c postgres;
DROP DATABASE IF EXISTS soundgoodSEM2;
CREATE DATABASE IF NOT EXISTS soundgoodSEM2;
\c soundgoodSEM2;

-- DATA TYPES SPECIFIC TO SOUNDGOOD
CREATE TYPE LEVEL AS ENUM('beginner', 'intermediate', 'advanced');
CREATE TYPE INSTRUTYPE AS ENUM('string', 'woodwind', 'brass', 'percussion', 'electronic');
CREATE TYPE LESSONTYPE AS ENUM('individual', 'group', 'ensemble');

----------------------------------------------------------------------------------------
-- PERSON related entities
CREATE TABLE person(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	person_number VARCHAR(500) NOT NULL,
	first_name VARCHAR(500) NOT NULL,
	last_name VARCHAR(500) NOT NULL,
	city VARCHAR(500),
	zip_code VARCHAR(500),
	street_name VARCHAR(500
);
ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);

CREATE TABLE applicant(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	skill_level LEVEL,
	desired_instrument VARCHAR(500),
	terminated BIT(1) NOT NULL,
	person_id INT NOT NULL -- FK
);
ALTER TABLE applicant ADD CONSTRAINT PK_applicant PRIMARY KEY (id);

CREATE TABLE person_email(
	person_id INT NOT NULL, -- FK
	email_id VARCHAR(500) NOT NULL -- FK
);
ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (person_id, email_id)

CREATE TABLE email(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	email VARCHAR(500) NOT NULL
);
ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (id);

CREATE TABLE person_phone(
	person_id INT NOT NULL, -- FK
	phone_id INT NOT NULL -- FK
);
ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (person_id, phone_id);

CREATE TABLE phone(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	phone_no VARCHAR(500) NOT NULL
);
ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (id);

CREATE TABLE person_pronouns(
	person_id INT NOT NULL, -- FK
	pronouns_id VARCHAR(500) NOT NULL -- FK
);
ALTER TABLE person_pronouns PK_person_pronouns PRIMARY KEY (person_id, pronouns_id);

CREATE TABLE preferred_pronouns(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	preferred_pronouns VARCHAR(500) NOT NULL
);
ALTER TABLE preferred_pronouns PK_preferred_pronouns PRIMARY KEY (id);

----------------------------------------------------------------------------------------
-- STUDENT related entities
CREATE TABLE student(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	person_id INT NOT NULL,				-- FK
	applicant_id INT NOT NULL,			-- FK
	contact_person_id INT NOT NULL,		-- FK
	terminated BIT(1) NOT NULL,
);
ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);

CREATE TABLE student_sibling(
	student_id INT NOT NULL,	-- FK
	sibling_id INT NOT NULL		-- FK
);
ALTER TABLE student_sibling ADD CONSTRAINT PK_student_sibling PRIMARY KEY (student_id, sibling_id);

CREATE TABLE contact_person(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	person_id INT NOT NULL,
);
ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (id);

CREATE TABLE rental(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	student_id INT NOT NULL,				-- FK
	rent_start_date TIMESTAMP(10) NOT NULL,
	rent_end_date TIMESTAMP(10),
	instrument_id INT NOT NULL				-- FK
);
ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (id);

CREATE TABLE instrument(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	currently_rented BIT(1) NOT NULL,
	monthly_rent_fee DECIMAL(10) NOT NULL,
	type INSTRUTYPE,
	brand VARCHAR(500),
	quantity_in_stock
);
ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);

CREATE TABLE student_current_receipt(
	student_id INT NOT NULL,		-- FK
	current_month_rental_fee DECIMAL(10) NOT NULL,
	current_month_lesson_fee DECIMAL(10),
	discount DECIMAL(10),
	previous_month_lesson_fee DECIMAL(10)
);

CREATE TABLE student_lesson(
	student_id INT NOT NULL,	-- FK
	lesson_id INT NOT NULL, 	-- FK
);
ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY (student_id, lesson_id);

----------------------------------------------------------------------------------------
-- LESSON related entities
CREATE TABLE lesson(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	level LEVEL NOT NULL,
	min_students INT,
	max_students INT,
	scheduled_time TIMESTAMP(10) NOT NULL,
	scheduled BIT(1) NOT NULL,
	given BIT(1) NOT NULL,
	price_id INT NOT NULL, 		-- FK
);
ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (id);

CREATE TABLE pricing_scheme(
	id INT GENERATED ALWAYS	AS IDENTITY NOT NULL,
	type_price LESSONTYPE NOT NULL,
	skill_level_price LEVEL NOT NULL
);
ALTER TABLE pricing_scheme ADD CONSTRAINT PK_pricing_scheme PRIMARY KEY (id);

CREATE TABLE group(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	maximum_number_of_students INT NOT NULL,
	minimum_number_of_sutdents INT NOT NULL,
	lesson_id INT NOT NULL -- FK
);
ALTER TABLE group ADD CONSTRAINT PK_group PRIMARY KEY (id);

CREATE TABLE ensemble(
	id IN GENERATED ALWAYS AS IDENTITY NOT NULL,
	target_genre VARCHAR(500) NOT NULL,
	group_id INT 	-- FK
);
ALTER TABLE ensemble ADD CCONSTRAINT PK_ensemble PRIMARY KEY(id);

----------------------------------------------------------------------------------------
-- INSTRUCTOR related entities
CREATE TABLE instructor(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	person_id INT NOT NULL	-- FK
);
ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);

CREATE TABLE instructor_instrument(
	instrument_id INT NOT NULL, -- FK
	instructor_id INT NOT NULL	-- FK
);
ALTER TABLE instructor_instrument ADD CONSTRAINT PK_instructor_instrument PRIMARY KEY (instrument_id, instructor_id);

CREATE TABLE instrument_for_lesson(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	instrument VARCHAR(500) NOT NULL
);
ALTER TABLE instrument_for_lesson ADD CONSTRAINT PK_instrument_for_lesson PRIMARY KEY (id);

CREATE TABLE instructor_receipt(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	current_month_salary_slip DECIMAL(10) NOT NULL,
	instructor_id INT NOT NULL		-- FK
);
ALTER TABLE instructor_receipt ADD CONSTRAINT PK_instructor_receipt PRIMARY KEY (id);

CREATE TABLE instructor_ensemble(
	instructor_id INT NOT NULL,	-- FK
	ensemble_id INT NOT NULL 	-- FK
);
ALTER TABLE instructor_ensemble ADD CONSTRAINT PK_instructor_ensemble PRIMARY KEY (instructor_id, ensemble_id);

CREATE TABLE ensemble_to_teach(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	genre VARCHAR(500) NOT NULL
);
ALTER TABLE ensemble_to_teach ADD CONSTRAINT PK_ensemble_to_teach PRIMARY KEY (id);

CREATE TABLE available_hour(
	start_time TIMESTAMP(10) NOT NULL,
	end_time TIMESTAMP(10) NOT NULL,
	instructor_id INT NOT NULL	-- FK
);