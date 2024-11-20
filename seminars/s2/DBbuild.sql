-- Switch to postgres database
\c postgres;
-- Drop and create database
DROP DATABASE IF EXISTS soundgoodSEM2;
CREATE DATABASE soundgoodSEM2;
\c soundgoodSEM2;

-- ENUM TYPES
CREATE TYPE LEVEL AS ENUM ('beginner', 'intermediate', 'advanced');
CREATE TYPE INSTRUTYPE AS ENUM ('string', 'woodwind', 'brass', 'percussion', 'electronic');
CREATE TYPE LESSONTYPE AS ENUM ('individual', 'group', 'ensemble');


----------------------------------------------------------------------------------------
-- CREATING THE TABLES
----------------------------------------------------------------------------------------

-- PERSON related entities
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    person_number VARCHAR(100) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    zip_code VARCHAR(20),
    street_name VARCHAR(200)
);

CREATE TABLE email (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200) NOT NULL
);

CREATE TABLE phone (
    id SERIAL PRIMARY KEY,
    phone_no VARCHAR(20) NOT NULL
);

CREATE TABLE preferred_pronouns (
    id SERIAL PRIMARY KEY,
    pronouns VARCHAR(50) NOT NULL
);

CREATE TABLE person_email (
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE,
    email_id INT NOT NULL REFERENCES email(id) ON DELETE CASCADE,
    PRIMARY KEY (person_id, email_id)
);

CREATE TABLE person_phone (
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE,
    phone_id INT NOT NULL REFERENCES phone(id) ON DELETE CASCADE,
    PRIMARY KEY (person_id, phone_id)
);

CREATE TABLE person_pronouns (
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE,
    pronouns_id INT NOT NULL REFERENCES preferred_pronouns(id) ON DELETE CASCADE,
    PRIMARY KEY (person_id, pronouns_id)
);

CREATE TABLE applicant (
    id SERIAL PRIMARY KEY,
    skill_level LEVEL NOT NULL,
    desired_instrument INSTRUTYPE NOT NULL,
    terminated BOOLEAN NOT NULL DEFAULT FALSE,
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE
);
----------------------------------------------------------------------------------------

-- STUDENT related entities
CREATE TABLE contact_person (
    id SERIAL PRIMARY KEY,
    person_id INT NOT NULL
);

CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE,
    applicant_id INT NOT NULL REFERENCES applicant(id) ON DELETE CASCADE,
    contact_person_id INT NOT NULL REFERENCES contact_person(id),
    terminated BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE student_sibling (
    student_id INT NOT NULL REFERENCES student(id) ON DELETE CASCADE,
    sibling_id INT NOT NULL REFERENCES student(id) ON DELETE CASCADE,
    PRIMARY KEY (student_id, sibling_id)
);

CREATE TABLE rental (
    id SERIAL PRIMARY KEY,
    student_id INT NOT NULL REFERENCES student(id) ON DELETE CASCADE,
    rent_start_date TIMESTAMP NOT NULL,
    rent_end_date TIMESTAMP NOT NULL,
    instrument_id INT NOT NULL
);

CREATE TABLE instrument (
    id SERIAL PRIMARY KEY,
    currently_rented BOOLEAN NOT NULL DEFAULT FALSE,
    monthly_rent_fee DECIMAL(10, 2) NOT NULL,
    type INSTRUTYPE NOT NULL,
    brand VARCHAR(100),
    quantity_in_stock INT NOT NULL
);

CREATE TABLE student_current_receipt (
    student_id INT NOT NULL REFERENCES student(id) ON DELETE CASCADE,
    current_month_rental_fee DECIMAL(10, 2) NOT NULL,
    current_month_lesson_fee DECIMAL(10, 2),
    discount DECIMAL(10, 2),
    previous_month_lesson_fee DECIMAL(10, 2),
    PRIMARY KEY (student_id)
);

CREATE TABLE student_lesson (
    student_id INT NOT NULL REFERENCES student(id) ON DELETE CASCADE,
    lesson_id INT NOT NULL,
    PRIMARY KEY (student_id, lesson_id)
);
----------------------------------------------------------------------------------------

-- LESSON related entities
CREATE TABLE pricing_scheme (
    id SERIAL PRIMARY KEY,
    type_price LESSONTYPE NOT NULL,
    skill_level_price LEVEL NOT NULL
);

CREATE TABLE lesson (
    id SERIAL PRIMARY KEY,
    level LEVEL NOT NULL,
    scheduled_time TIMESTAMP NOT NULL,
    scheduled BOOLEAN NOT NULL DEFAULT FALSE,
    given BOOLEAN NOT NULL DEFAULT FALSE,
    price_id INT NOT NULL REFERENCES pricing_scheme(id) ON DELETE CASCADE
);

CREATE TABLE group (
    id SERIAL PRIMARY KEY,
    maximum_number_of_students INT NOT NULL,
    minimum_number_of_students INT NOT NULL,
    lesson_id INT NOT NULL REFERENCES lesson(id) ON DELETE CASCADE
);

CREATE TABLE ensemble (
    id SERIAL PRIMARY KEY,
    target_genre VARCHAR(100) NOT NULL,
    group_id INT NOT NULL REFERENCES group(id) ON DELETE CASCADE
);
----------------------------------------------------------------------------------------

-- INSTRUCTOR related entities
CREATE TABLE instructor (
    id SERIAL PRIMARY KEY,
    person_id INT NOT NULL REFERENCES person(id) ON DELETE CASCADE
);

CREATE TABLE instructor_instrument (
    instrument_id INT NOT NULL REFERENCES instrument(id) ON DELETE CASCADE,
    instructor_id INT NOT NULL REFERENCES instructor(id) ON DELETE CASCADE,
    PRIMARY KEY (instrument_id, instructor_id)
);

CREATE TABLE available_hour (
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    instructor_id INT NOT NULL REFERENCES instructor(id) ON DELETE CASCADE,
    PRIMARY KEY (start_time, instructor_id)
);

CREATE TABLE instructor_receipt (
    id SERIAL PRIMARY KEY,
    current_month_salary_slip DECIMAL(10, 2) NOT NULL,
    instructor_id INT NOT NULL REFERENCES instructor(id) ON DELETE CASCADE
);

CREATE TABLE instructor_ensemble (
    instructor_id INT NOT NULL REFERENCES instructor(id) ON DELETE CASCADE,
    ensemble_id INT NOT NULL REFERENCES ensemble(id) ON DELETE CASCADE,
    PRIMARY KEY (instructor_id, ensemble_id)
);
----------------------------------------------------------------------------------------
-- UNIQUENESS AND CONSTRAINTS
----------------------------------------------------------------------------------------
ALTER TABLE instrument ADD CONSTRAINT CHK_quantity_in_stock CHECK (quantity_in_stock >= 0);
ALTER TABLE lesson ADD CONSTRAINT CHK_min_max_students CHECK (min_students <= max_students);
