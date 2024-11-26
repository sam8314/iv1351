----------------------------------------------------------------------------------------
-- PERSON
----------------------------------------------------------------------------------------
INSERT INTO person (person_number, first_name, last_name, city, zip_code, street_name)
VALUES
('599264376591', 'Jane', 'Doe', 'Kista', '16440', 'Armegatan'),
('781252311547', 'John', 'Smith', 'Solna', '17176', 'Drottninggatan'),
('810302381214', 'Emma', 'Andersson', 'Stockholm', '11122', 'Vasagatan'),
('670927308716', 'Liam', 'Karlsson', 'Gothenburg', '41328', 'Linnégatan'),
('920101490362', 'Ella', 'Johansson', 'Uppsala', '75263', 'Sankt Persgatan'),
('600504367191', 'Lucas', 'Larsson', 'Malmö', '21147', 'Skeppsbron'),
('730812239108', 'Olivia', 'Eriksson', 'Västerås', '72187', 'Stora Gatan'),
('941230465981', 'William', 'Berg', 'Örebro', '70230', 'Järnvägsgatan'),
('850416502734', 'Alicia', 'Lindberg', 'Helsingborg', '25220', 'Bruksgatan'),
('780102317429', 'Oscar', 'Svensson', 'Norrköping', '60219', 'Kungsgatan'),
('910916490321', 'Maja', 'Nilsson', 'Lund', '22362', 'Bantorget'),
('950803487659', 'Alexander', 'Axelsson', 'Linköping', '58223', 'Storgatan'),
('811116390251', 'Ebba', 'Håkansson', 'Halmstad', '30242', 'Stationsgatan'),
('620227403718', 'Elliot', 'Löfgren', 'Karlstad', '65225', 'Tingvallagatan'),
('700111495671', 'Freja', 'Olsson', 'Umeå', '90347', 'Rådhusesplanaden'),
('860911487382', 'Filip', 'Sandberg', 'Gävle', '80320', 'Södra Kungsgatan'),
('900512398712', 'Nora', 'Engström', 'Sundsvall', '85234', 'Esplanaden'),
('750725309817', 'Isak', 'Hedlund', 'Luleå', '97241', 'Storgatan'),
('810304372940', 'Elsa', 'Blom', 'Borås', '50338', 'Allégatan'),
('620506493781', 'Noah', 'Dahl', 'Eskilstuna', '63220', 'Fristadstorget');

INSERT INTO email (email)
VALUES
('jane.doe@example.com'),
('john.smith@example.com'),
('emma.andersson@mail.com'),
('liam.karlsson@webmail.se'),
('ella.johansson@domain.com'),
('lucas.larsson@outlook.com'),
('olivia.eriksson@yahoo.se'),
('william.berg@gmail.com'),
('alicia.lindberg@live.com'),
('oscar.svensson@company.se'),
('maja.nilsson@organization.com'),
('alexander.axelsson@provider.se'),
('ebba.hakansson@business.se'),
('elliot.lofgren@corporate.com'),
('freja.olsson@startup.se'),
('filip.sandberg@edu.se'),
('nora.engstrom@workplace.com'),
('isak.hedlund@enterprise.se'),
('elsa.blom@private.com'),
('noah.dahl@personalmail.com');

INSERT INTO phone (phone_no) 
VALUES
('0758011484'),
('0742561570'),
('0757855836'),
('0743231552'),
('0736623547'),
('0759515075'),
('0755564903'),
('0783371246'),
('0795587054'),
('0777636279'),
('0793321015'),
('0747308068'),
('0728049955'),
('0725260419'),
('0716085824'),
('0767252393'),
('0711768365'),
('0736580536'),
('0733508426'),
('0787084588');

INSERT INTO preferred_pronouns (pronouns)
VALUES
    ('she/her'),
    ('he/him'),
    ('she/they'),
    ('he/they'),
    ('all/any'),
    ('he/him'),
    ('she/her'),
    ('he/him'),
    ('she/her'),
    ('she/her'),
    ('he/him'),
    ('they/them'),
    ('he/him'),
    ('they/she'),
    ('he/they'),
    ('she/her'),
    ('he/him'),
    ('she/they'),
    ('any/all'),
    ('they/he');


INSERT INTO person_email(person_id, email_id)
VALUES 
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10),
  (11,11),
  (12,12),
  (13,13),
  (14,14),
  (15,15),
  (16,16),
  (17,17),
  (18,18),
  (19,19),
  (20,20);

INSERT INTO person_phone (person_id, phone_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10),
  (11,11),
  (12,12),
  (13,13),
  (14,14),
  (15,15),
  (16,16),
  (17,17),
  (18,18),
  (19,19),
  (20,20);

INSERT INTO person_pronouns (person_id, pronouns_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10),
  (11,11),
  (12,12),
  (13,13),
  (14,14),
  (15,15),
  (16,16),
  (17,17),
  (18,18),
  (19,19),
  (20,20);
  
INSERT INTO applicant (skill_level, desired_instrument, terminated, person_id) 
VALUES
('advanced', 'percussion', true, 1),
('advanced', 'electronic', true, 2),
('intermediate', 'percussion', false, 3),
('beginner', 'woodwind', true, 4),
('advanced', 'woodwind', true, 5),
('advanced', 'percussion', true, 6),
('beginner', 'percussion', false, 7),
('beginner', 'brass', true, 8),
('advanced', 'percussion', true, 9),
('intermediate', 'electronic', true, 10),
('beginner', 'woodwind', false, 11),
('advanced', 'string', true, 12),
('advanced', 'electronic', false, 13),
('beginner', 'brass', false, 14),
('advanced', 'brass', true, 15),
('intermediate', 'woodwind', true, 16),
('intermediate', 'percussion', false, 17),
('beginner', 'woodwind', false, 18),
('intermediate', 'percussion', false, 19),
('advanced', 'brass', true, 20);



----------------------------------------------------------------------------------------
-- STUDENT
----------------------------------------------------------------------------------------
INSERT INTO contact_person (person_id)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);


INSERT INTO student (person_id, applicant_id, contact_person_id, terminated)
VALUES
(1, 2, 7, false),
(2, 3, 8, false),
(3, 4, 9, false),
(4, 5, 10, false),
(5, 6, 11, false),
(6, 7, 12, false),
(7, 8, 13, false),
(8, 9, 14, false),
(9, 10, 15, false),
(10, 11, 16, false),
(11, 12, 17, false),
(12, 13, 18, false),
(13, 14, 19, false),
(14, 15, 20, false),
(15, 16, 1, false),
(16, 17, 2, false),
(17, 18, 3, false),
(18, 19, 4, false),
(19, 20, 5, true),
(20, 1, 6, false);

  
INSERT INTO student_sibling(student_id, sibling_id)
VALUES
(3, 6),
(20, 17),
(17, 11),
(8, 2),
(7, 16),
(12, 3),
(11, 20),
(15, 10),
(14, 4),
(16, 7),
(4, 8),
(6, 5),
(13, 9),
(9, 14),
(2, 18),
(10, 19),
(19, 1),
(5, 15),
(18, 12),
(1, 13);


INSERT INTO rental(student_id, rent_start_date, rent_end_date, instrument_id)
VALUES 
(14, '2024-03-12', '2024-11-10', 11),
(19, '2024-07-12', '2024-12-12', 1),
(20, '2024-06-12', '2024-11-12', 16),
(3, '2024-10-12', '2024-12-28', 15),
(7, '2024-01-17', '2024-10-17', 12),
(5, '2024-09-12', '2024-12-02', 9),
(10, '2024-05-02', '2024-12-25', 7),
(8, '2024-03-01', '2024-12-16', 6),
(6, '2024-08-10', '2024-10-10', 5),
(4, '2024-03-29', '2024-11-13', 10),
(9, '2024-01-01', '2024-10-01', 19),
(1, '2024-10-05', '2024-11-05', 13),
(2, '2024-07-08', '2024-12-25', 4),
(18, '2024-04-22', '2024-12-25', 3),
(15, '2024-03-15', '2024-10-15', 17),
(17, '2024-11-09', '2024-11-10', 2),
(12, '2024-01-12', '2024-11-12', 20),
(13, '2024-04-02', '2024-11-10', 18),
(16, '2024-04-14', '2024-11-28', 8),
(11, '2024-08-26', '2024-11-25', 14);

INSERT INTO instrument(currently_rented, monthly_rent_fee, type, brand, quantity_in_stock)
VALUES
(true, 344.63, 'electronic', 'Yamaha', 9),
(true, 225.57, 'woodwind', 'Yamaha', 1),
(false, 346.0, 'woodwind', 'Buffet Crampon', 9),
(false, 248.15, 'percussion', 'Ludwig', 6),
(true, 279.14, 'electronic', 'Yamaha', 10),
(false, 236.1, 'woodwind', 'Yamaha', 3),
(true, 281.76, 'string', 'Fender', 3),
(false, 345.27, 'woodwind', 'Selmer', 6),
(true, 201.61, 'percussion', 'Tama', 10),
(false, 276.55, 'percussion', 'Ludwig', 2),
(false, 263.9, 'string', 'Fender', 3),
(true, 208.03, 'woodwind', 'Buffet Crampon', 8),
(true, 235.45, 'brass', 'King', 5),
(true, 308.23, 'electronic', 'Yamaha', 9),
(false, 335.2, 'percussion', 'Pearl', 1),
(false, 280.43, 'electronic', 'Yamaha', 3),
(false, 348.39, 'brass', 'Bach', 7),
(true, 299.75, 'woodwind', 'Buffet Crampon', 2),
(false, 345.56, 'string', 'Gibson', 1),
(false, 220.15, 'string', 'Gibson', 10);


INSERT INTO student_current_receipt(student_id, current_month_rental_fee, current_month_lesson_fee, discount, previous_month_lesson_fee)
VALUES
(7, 0.00, 1172.44, NULL, 1706.76),
(17, 345.56, 1534.58, 153.46, 1835.80),
(20, 263.90, 1602.74, 160.27, 945.46),
(19, 279.14, 1335.75, 133.58, 955.56),
(8, 0.00, 1227.17, NULL, 1224.19),
(1, 0.00, 1575.50, 157.55, 527.33),
(6, 0.00, 1473.71, NULL, 1292.57),
(16, 0.00, 926.28, NULL, 718.01),
(11, 344.63, 697.34, 69.73, 1271.32),
(14, 0.00, 545.12, 54.51, 579.43),
(4, 281.76, 1881.49, 188.15, 1148.22),
(5, 208.03, 1944.45, NULL, 690.64),
(12, 0.00, 1743.99, NULL, 888.93),
(18, 0.00, 908.17, 90.82, 723.12),
(3, 106.98, 1180.88, NULL, 1273.38),
(13, 299.75, 729.12, 72.91, 1098.10),
(10, 201.61, 1579.43, NULL, 1552.10),
(15, 0.00, 1645.54, 164.55, 1811.42),
(2, 0.00, 1365.76, 136.58, 1959.23),
(9, 0.00, 804.08, NULL, 1692.32);


INSERT INTO student_lesson(student_id, lesson_id)
VALUES
(3, 6),
(20, 17),
(17, 11),
(8, 2),
(7, 16),
(12, 3),
(11, 20),
(15, 10),
(14, 4),
(16, 7),
(4, 8),
(6, 5),
(13, 9),
(9, 14),
(2, 18),
(10, 19),
(19, 1),
(5, 15),
(18, 12),
(1, 13);

----------------------------------------------------------------------------------------
-- LESSON
----------------------------------------------------------------------------------------
INSERT INTO pricing_scheme (type_price, skill_level_price) 
VALUES
('ensemble', 'beginner'),
('individual', 'advanced'),
('individual', 'beginner'),
('individual', 'advanced'),
('group', 'beginner'),
('group', 'advanced'),
('group', 'intermediate'),
('individual', 'beginner'),
('individual', 'beginner'),
('ensemble', 'beginner'),
('group', 'beginner'),
('individual', 'intermediate'),
('ensemble', 'intermediate'),
('individual', 'advanced'),
('ensemble', 'intermediate'),
('group', 'advanced'),
('ensemble', 'beginner'),
('individual', 'beginner'),
('group', 'advanced'),
('individual', 'advanced');

INSERT INTO lesson (level, scheduled_time, scheduled, given, price_id) VALUES
('advanced', '2024-10-22 14:00:00', true, false, 14),
('advanced', '2024-10-22 13:00:00', true, true, 7),
('beginner', '2024-10-23 16:00:00', true, false, 15),
('beginner', '2024-10-22 11:00:00', true, true, 6),
('advanced', '2024-10-21 13:00:00', true, true, 13),
('beginner', '2024-10-16 14:00:00', true, true, 5),
('intermediate', '2024-10-14 11:00:00', true, true, 12),
('beginner', '2024-10-19 13:00:00', true, true, 17),
('beginner', '2024-10-26 10:00:00', true, true, 1),
('advanced', '2024-10-16 13:00:00', true, false, 19),
('advanced', '2024-10-13 13:00:00', true, true, 16),
('advanced', '2024-10-15 17:00:00', true, true, 18),
('advanced', '2024-10-22 16:00:00', true, false, 9),
('advanced', '2024-10-15 17:00:00', true, true, 3),
('beginner', '2024-10-19 14:00:00', false, false, 4),
('intermediate', '2024-10-20 10:00:00', false, false, 8),
('beginner', '2024-10-24 12:00:00', false, true, 2),
('intermediate', '2024-10-13 15:00:00', true, false, 11),
('intermediate', '2024-10-13 12:00:00', false, false, 20),
('advanced', '2024-10-17 10:00:00', true, false, 10);


INSERT INTO group_lesson (maximum_number_of_students, minimum_number_of_students, lesson_id) 
VALUES
(20, 4, 16),
(5, 4, 1),
(15, 5, 5),
(20, 5, 19),
(5, 3, 20),
(20, 3, 9),
(10, 5, 3),
(10, 5, 18),
(20, 4, 2),
(10, 4, 14),
(15, 4, 17),
(15, 3, 8),
(5, 5, 13),
(10, 3, 11),
(20, 3, 4),
(5, 4, 7),
(20, 5, 12),
(20, 4, 10),
(15, 3, 6),
(20, 3, 15);

INSERT INTO ensemble ( target_genre, group_id)
VALUES 
('Pop', 6),
('Pop', 4),
('Orchestral', 2),
('Jazz', 19),
('Orchestral', 5),
('Experimental', 1),
('Jazz', 3),
('Pop', 9),
('Jazz', 12),
('Orchestral', 8),
('Classical', 10),
('Jazz', 11),
('Orchestral', 7),
('Experimental', 15),
('Orchestral', 18),
('Orchestral', 17),
('Orchestral', 20),
('Classical', 14),
('Pop', 13),
('Orchestral', 16);


----------------------------------------------------------------------------------------
-- INSTRUCTOR
----------------------------------------------------------------------------------------
INSERT INTO instructor (person_id)
VALUES
(8),
(6),
(9),
(16),
(13),
(18),
(14),
(17),
(19),
(2),
(10),
(5),
(11),
(1),
(20),
(12),
(3),
(4),
(7),
(15);

INSERT INTO instructor_instrument (instrument_id, instructor_id) 
VALUES
(14, 4),
(6, 5),
(5, 10),
(20, 3),
(3, 14),
(11, 7),
(7, 13),
(4, 19),
(16, 20),
(13, 12),
(2, 1),
(19, 15),
(9, 9),
(1, 8),
(15, 2),
(12, 17),
(8, 16),
(18, 6),
(17, 11),
(10, 18);

INSERT INTO available_hour (start_time, end_time, instructor_id) 
VALUES
('2024-10-04 09:00:00', '2024-10-04 18:00:00', 5),
('2024-10-05 09:00:00', '2024-10-05 16:00:00', 8),
('2024-10-09 11:00:00', '2024-10-09 18:00:00', 9),
('2024-10-14 09:00:00', '2024-10-14 17:00:00', 12),
('2024-10-17 10:00:00', '2024-10-17 15:00:00', 16),
('2024-10-19 11:00:00', '2024-10-19 18:00:00', 18),
('2024-11-01 11:00:00', '2024-11-01 17:00:00', 13),
('2024-11-04 10:00:00', '2024-11-04 18:00:00', 6),
('2024-11-04 10:00:00', '2024-11-04 18:00:00', 11),
('2024-11-07 09:00:00', '2024-11-07 18:00:00', 2),
('2024-11-08 09:00:00', '2024-11-08 14:00:00', 19),
('2024-11-08 12:00:00', '2024-11-08 18:00:00', 14),
('2024-11-09 12:00:00', '2024-11-09 17:00:00', 15),
('2024-11-10 11:00:00', '2024-11-10 18:00:00', 1),
('2024-11-13 09:00:00', '2024-11-13 14:00:00', 7),
('2024-11-17 09:00:00', '2024-11-17 15:00:00', 10),
('2024-11-17 09:00:00', '2024-11-17 16:00:00', 20),
('2024-11-20 08:00:00', '2024-11-20 17:00:00', 4),
('2024-11-28 10:00:00', '2024-11-28 18:00:00', 3),
('2024-11-28 10:00:00', '2024-11-28 18:00:00', 17);

INSERT INTO instructor_receipt (current_month_salary_slip, instructor_id) VALUES
(34240.22, 14),
(24771.96, 12),
(24048.36, 4),
(28776.65, 8),
(37009.55, 15),
(32958.75, 6),
(27296.31, 9),
(39826.00, 20),
(26076.60, 7),
(36561.19, 10),
(35048.23, 1),
(23404.24, 17),
(27599.91, 5),
(32831.93, 2),
(28047.42, 3),
(27103.70, 19),
(23909.84, 18),
(37027.80, 16),
(38614.55, 11),
(33834.84, 13);

INSERT INTO instructor_ensemble (instructor_id, ensemble_id) 
VALUES
(14, 6),
(10, 8),
(5, 9),
(12, 5),
(3, 7),
(13, 15),
(18, 19),
(17, 18),
(11, 16),
(6, 17),
(20, 2),
(15, 12),
(19, 20),
(4, 14),
(8, 11),
(2, 13),
(16, 10),
(1, 3),
(7, 4),
(9, 1);
