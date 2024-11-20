 
\c postgres;
DROP DATABASE IF EXISTS soundgoodSEM2;
CREATE DATABASE IF NOT EXISTS soundgoodSEM2;
\c soundgoodSEM2;

-- DATA TYPES SPECIFIC TO SOUNDGOOD
CREATE TYPE LEVEL AS ENUM('beginner', 'intermediate', 'advanced');
CREATE TYPE INSTRUTYPE AS ENUM('string', 'woodwind', 'brass', 'percussion', 'electronic');
CREATE TYPE LESSONTYPE AS ENUM('individual', 'group', 'ensemble');

----------------------------------------------------------------------------------------
-- CREATING THE TABLES
----------------------------------------------------------------------------------------

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

CREATE TABLE applicant(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	skill_level LEVEL,
	desired_instrument VARCHAR(500),
	terminated BIT(1) NOT NULL,
	person_id INT NOT NULL -- FK
);

CREATE TABLE person_email(
	person_id INT NOT NULL, -- FK
	email_id VARCHAR(500) NOT NULL -- FK
);

CREATE TABLE email(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	email VARCHAR(500) NOT NULL
);

CREATE TABLE person_phone(
	person_id INT NOT NULL, -- FK
	phone_id INT NOT NULL -- FK
);

CREATE TABLE phone(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	phone_no VARCHAR(500) NOT NULL
);

CREATE TABLE person_pronouns(
	person_id INT NOT NULL, -- FK
	pronouns_id VARCHAR(500) NOT NULL -- FK
);

CREATE TABLE preferred_pronouns(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	preferred_pronouns VARCHAR(500) NOT NULL
);
----------------------------------------------------------------------------------------
-- STUDENT related entities
CREATE TABLE student(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	person_id INT NOT NULL,				-- FK
	applicant_id INT NOT NULL,			-- FK
	contact_person_id INT NOT NULL,		-- FK
	terminated BIT(1) NOT NULL,
);

CREATE TABLE student_sibling(
	student_id INT NOT NULL,	-- FK
	sibling_id INT NOT NULL		-- FK
);

CREATE TABLE contact_person(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	person_id INT NOT NULL,
);

CREATE TABLE rental(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	student_id INT NOT NULL,				-- FK
	rent_start_date TIMESTAMP(10) NOT NULL,
	rent_end_date TIMESTAMP(10),
	instrument_id INT NOT NULL				-- FK
);

CREATE TABLE instrument(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	currently_rented BIT(1) NOT NULL,
	monthly_rent_fee DECIMAL(10) NOT NULL,
	type INSTRUTYPE,
	brand VARCHAR(500),
	quantity_in_stock
);

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

CREATE TABLE pricing_scheme(
	id INT GENERATED ALWAYS	AS IDENTITY NOT NULL,
	type_price LESSONTYPE NOT NULL,
	skill_level_price LEVEL NOT NULL
);

CREATE TABLE group(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	maximum_number_of_students INT NOT NULL,
	minimum_number_of_sutdents INT NOT NULL,
	lesson_id INT NOT NULL -- FK
);

CREATE TABLE ensemble(
	id IN GENERATED ALWAYS AS IDENTITY NOT NULL,
	target_genre VARCHAR(500) NOT NULL,
	group_id INT 	-- FK
);
----------------------------------------------------------------------------------------
-- INSTRUCTOR related entities
CREATE TABLE instructor(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	person_id INT NOT NULL	-- FK
);

CREATE TABLE instructor_instrument(
	instrument_id INT NOT NULL, -- FK
	instructor_id INT NOT NULL	-- FK
);

CREATE TABLE instrument_for_lesson(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	instrument VARCHAR(500) NOT NULL
);


CREATE TABLE instructor_receipt(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	current_month_salary_slip DECIMAL(10) NOT NULL,
	instructor_id INT NOT NULL		-- FK
);

CREATE TABLE instructor_ensemble(
	instructor_id INT NOT NULL,	-- FK
	ensemble_id INT NOT NULL 	-- FK
);

CREATE TABLE ensemble_to_teach(
	id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
	genre VARCHAR(500) NOT NULL
);

CREATE TABLE available_hour(
	start_time TIMESTAMP(10) NOT NULL,
	end_time TIMESTAMP(10) NOT NULL,
	instructor_id INT NOT NULL	-- FK
);

----------------------------------------------------------------------------------------
-- ADDING PKs
----------------------------------------------------------------------------------------
ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);
ALTER TABLE applicant ADD CONSTRAINT PK_applicant PRIMARY KEY (id);
ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (person_id, email_id);
ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (id);
ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (person_id, phone_id);
ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (id);
ALTER TABLE person_pronouns PK_person_pronouns PRIMARY KEY (person_id, pronouns_id);
ALTER TABLE preferred_pronouns PK_preferred_pronouns PRIMARY KEY (id);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);
ALTER TABLE student_sibling ADD CONSTRAINT PK_student_sibling PRIMARY KEY (student_id, sibling_id);
ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (id);
ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (id);
ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);
ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY (student_id, lesson_id);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (id);
ALTER TABLE pricing_scheme ADD CONSTRAINT PK_pricing_scheme PRIMARY KEY (id);
ALTER TABLE group ADD CONSTRAINT PK_group PRIMARY KEY (id);
ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY(id);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);
ALTER TABLE instructor_instrument ADD CONSTRAINT PK_instructor_instrument PRIMARY KEY (instrument_id, instructor_id);
ALTER TABLE instrument_for_lesson ADD CONSTRAINT PK_instrument_for_lesson PRIMARY KEY (id);
ALTER TABLE instructor_receipt ADD CONSTRAINT PK_instructor_receipt PRIMARY KEY (id);
ALTER TABLE instructor_ensemble ADD CONSTRAINT PK_instructor_ensemble PRIMARY KEY (instructor_id, ensemble_id);
ALTER TABLE ensemble_to_teach ADD CONSTRAINT PK_ensemble_to_teach PRIMARY KEY (id);
----------------------------------------------------------------------------------------
-- ADDING FKs
----------------------------------------------------------------------------------------
ALTER TABLE applicant ADD CONSTRAINT FK_applicant_0 FOREIGN KEY person_id REFERENCES person (id);
ALTER TABLE person_email ADD CONSTRAINT FK_person_email_0 FOREIGN KEY person_id REFERENCES person (id);
ALTER TABLE person_email ADD CONSTRAINT FK_person_email_1 FOREIGN KEY email_id REFERENCES email (id);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_0 FOREIGN KEY person_id REFERENCES person (id);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_1 FOREIGN KEY phone_id REFERENCES phone (id);
ALTER TABLE person_pronouns ADD CONSTRAINT FK_person_pronouns_0 FOREIGN KEY person_id REFERENCES person (id);
ALTER TABLE person_pronouns ADD CONSTRAINT FK_person_pronouns_1 FOREIGN KEY pronouns_id REFERENCES pronouns (id);

ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY person_id REFERENCES person (id);
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY applicant_id REFERENCES applicant (id);
ALTER TABLE student ADD CONSTRAINT FK_student_2 FOREIGN KEY contact_person_id REFERENCES contact_person (id);
ALTER TABLE rental ADD CONSTRAINT FK_rental_0 FOREIGN KEY student_id REFERENCES student (id);
ALTER TABLE rental ADD CONSTRAINT FK_rental_1 FOREIGN KEY instrument_id REFERENCES instrument (id);
ALTER TABLE student_current_receipt ADD CONSTRAINT FK_student_current_receipt_0 FOREIGN KEY student_id REFERENCES student (id);
ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_0 FOREIGN KEY student_id REFERENCES student (id);
ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_1 FOREIGN KEY sibling_id REFERENCES student (id);
ALTER TABLE PK_student_lesson ADD CONSTRAINT FK_student_lesson_0 FOREIGN KEY student_id REFERENCES student (id);
ALTER TABLE PK_student_lesson ADD CONSTRAINT FK_student_lesson_1 FOREIGN KEY lesson_id REFERENCES lesson (id);

ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY price_id REFERENCES pricing_scheme (id);
ALTER TABLE group ADD CONSTRAINT FK_group_0 FOREIGN KEY lesson_id REFERENCES lesson (id);
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY group_id REFERENCES group (id);

ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY person_id REFERENCES person (id);
ALTER TABLE available_hour ADD CONSTRAINT FK_available_hour_0 FOREIGN KEY instructor_id REFERENCES instructor (id);
ALTER TABLE instructor_ensemble ADD CONSTRAINT FK_instructor_ensemble_0 FOREIGN KEY instructor_id REFERENCES instructor (id);
ALTER TABLE instructor_ensemble ADD CONSTRAINT FK_instructor_ensemble_1 FOREIGN KEY ensemble_id REFERENCES ensemble_to_teach (id);
ALTER TABLE instructor_instrument ADD CONSTRAINT FK_instructor_instrument_0 FOREIGN KEY instructor_id REFERENCES instructor (id);
ALTER TABLE instructor_instrument ADD CONSTRAINT FK_instructor_instrument_1 FOREIGN KEY instrument_id REFERENCES instrument_for_lesson (id);
ALTER TABLE instructor_receipt ADD CONSTRAINT FK_instructor_receipt_0 FOREIGN KEY instructor_id REFERENCES instructor (id);
