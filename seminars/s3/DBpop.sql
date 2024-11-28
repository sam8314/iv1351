
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
    ('she'),
    ('he'),
    ('they'),
    ('any/all');

INSERT INTO person_email(person_id, email_id)
VALUES
  (101, 101),
  (102, 102),
  (103, 103),
  (104, 104),
  (105, 105),
  (106, 106),
  (107, 107),
  (108, 108),
  (109, 109),
  (110, 110),
  (111, 111),
  (112, 112),
  (113, 113),
  (114, 114),
  (115, 115),
  (116, 116),
  (117, 117),
  (118, 118),
  (119, 119),
  (120, 120);


INSERT INTO person_phone (person_id, phone_id)
VALUES
  (101, 101),
  (102, 102),
  (103, 103),
  (104, 104),
  (105, 105),
  (106, 106),
  (107, 107),
  (108, 108),
  (109, 109),
  (110, 110),
  (111, 111),
  (112, 112),
  (113, 113),
  (114, 114),
  (115, 115),
  (116, 116),
  (117, 117),
  (118, 118),
  (119, 119),
  (120, 120);

INSERT INTO person_pronouns (person_id, pronouns_id)
VALUES
  (101, 101),
  (102, 102),
  (103, 103),
  (104, 104),
  (105, 101),
  (106, 102),
  (107, 103),
  (108, 104),
  (109, 101),
  (110, 102),
  (111, 103),
  (112, 104),
  (113, 101),
  (114, 102),
  (115, 103),
  (116, 104),
  (117, 101),
  (118, 102),
  (119, 103),
  (120, 104);

INSERT INTO applicant (skill_level, desired_instrument, terminated, person_id)
VALUES
('advanced', 'percussion', true, 101),
('advanced', 'electronic', true, 102),
('intermediate', 'percussion', false, 103),
('beginner', 'woodwind', true, 104),
('advanced', 'woodwind', true, 105),
('advanced', 'percussion', true, 106),
('beginner', 'percussion', false, 107),
('beginner', 'brass', true, 108),
('advanced', 'percussion', true, 109),
('intermediate', 'electronic', true, 110),
('beginner', 'woodwind', false, 111),
('advanced', 'string', true, 112),
('advanced', 'electronic', false, 113),
('beginner', 'brass', false, 114),
('advanced', 'brass', true, 115),
('intermediate', 'woodwind', true, 116),
('intermediate', 'percussion', false, 117),
('beginner', 'woodwind', false, 118),
('intermediate', 'percussion', false, 119),
('advanced', 'brass', true, 120);




----------------------------------------------------------------------------------------
-- STUDENT
----------------------------------------------------------------------------------------
INSERT INTO contact_person (person_id)
VALUES
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109),
(110),
(111),
(112),
(113),
(114),
(115),
(116),
(117),
(118),
(119),
(120);

INSERT INTO student (person_id, applicant_id, contact_person_id, terminated)
VALUES
(101, 21, 22, false),
(102, 22, 23, false),
(103, 23, 24, false),
(104, 24, 25, false),
(105, 25, 26, false),
(106, 26, 27, false),
(107, 27, 28, false),
(108, 28, 29, false),
(109, 29, 30, false),
(110, 30, 31, false),
(111, 31, 32, false),
(112, 32, 33, false),
(113, 33, 34, false),
(114, 34, 35, false),
(115, 35, 36, false),
(116, 36, 37, false),
(117, 37, 38, false),
(118, 38, 39, false),
(119, 39, 40, true),
(120, 40, 21, false);


INSERT INTO student_sibling(student_id, sibling_id)
VALUES
(41, 42), (42, 41),
(41, 43), (43, 41),
(42, 43), (43, 42),
(44, 45), (45, 44),
(46, 47), (47, 46),
(48, 49), (49, 48),
(50, 51), (51, 50);

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

INSERT INTO rental(student_id, rent_start_date, rent_end_date, instrument_id)
VALUES
(41, '2024-03-12', NULL, 21),
(42, '2024-07-12', '2024-12-12', 22),
(43, '2024-06-12', '2024-11-12', 23),
(44, '2024-10-12', NULL, 24),
(45, '2024-01-17', '2024-10-17', 25),
(46, '2024-09-12', NULL, 26),
(47, '2024-05-02', NULL, 27),
(48, '2024-03-01', NULL, 28),
(49, '2024-08-10', '2024-10-10', 29),
(50, '2024-03-29', NULL, 30),
(51, '2024-01-01', '2024-10-01', 31),
(52, '2024-10-05', '2024-11-05', 32),
(53, '2024-07-08', NULL, 33),
(54, '2024-04-22', NULL, 34),
(55, '2024-03-15', '2024-10-15', 35),
(56, '2024-11-09', NULL, 36),
(57, '2024-01-12', '2024-11-12', 37),
(58, '2024-04-02', NULL, 38),
(59, '2024-04-14', NULL, 39),
(60, '2024-08-26', NULL, 40);


INSERT INTO student_current_receipt(student_id, current_month_rental_fee, current_month_lesson_fee, discount, previous_month_lesson_fee)
VALUES
(41, 0.00, 1172.44, NULL, 1706.76),
(42, 345.56, 1534.58, 153.46, 1835.80),
(43, 263.90, 1602.74, 160.27, 945.46),
(44, 279.14, 1335.75, 133.58, 955.56),
(45, 0.00, 1227.17, NULL, 1224.19),
(46, 0.00, 1575.50, 157.55, 527.33),
(47, 0.00, 1473.71, NULL, 1292.57),
(48, 0.00, 926.28, NULL, 718.01),
(49, 344.63, 697.34, 69.73, 1271.32),
(50, 0.00, 545.12, 54.51, 579.43),
(51, 281.76, 1881.49, 188.15, 1148.22),
(52, 208.03, 1944.45, NULL, 690.64),
(53, 0.00, 1743.99, NULL, 888.93),
(54, 0.00, 908.17, 90.82, 723.12),
(55, 106.98, 1180.88, NULL, 1273.38),
(56, 299.75, 729.12, 72.91, 1098.10),
(57, 201.61, 1579.43, NULL, 1552.10),
(58, 0.00, 1645.54, 164.55, 1811.42),
(59, 0.00, 1365.76, 136.58, 1959.23),
(60, 0.00, 804.08, NULL, 1692.32);



----------------------------------------------------------------------------------------
-- LESSON
----------------------------------------------------------------------------------------
INSERT INTO pricing_scheme (type_price, skill_level_price, price)
VALUES
('ensemble', 'beginner', 25.00),
('individual', 'advanced', 120.00),
('individual', 'beginner', 55.00),
('individual', 'advanced', 130.00),
('group_lesson', 'beginner', 35.00),
('group_lesson', 'advanced', 70.00),
('group_lesson', 'intermediate', 50.00),
('individual', 'beginner', 60.00),
('individual', 'beginner', 58.00),
('ensemble', 'beginner', 28.00),
('group_lesson', 'beginner', 32.00),
('individual', 'intermediate', 80.00),
('ensemble', 'intermediate', 40.00),
('individual', 'advanced', 125.00),
('ensemble', 'intermediate', 42.00),
('group_lesson', 'advanced', 65.00),
('ensemble', 'beginner', 30.00),
('individual', 'beginner', 62.00),
('group_lesson', 'advanced', 68.00),
('individual', 'advanced', 140.00);


INSERT INTO instructor (person_id)
VALUES
(101),
(102),
(103),
(104),
(105);


INSERT INTO lesson (level, scheduled_time, scheduled, given, price_id, instructor_id)
VALUES
('advanced', '2024-11-22 14:00:00', true, true, 21, 5),
('advanced', '2024-11-22 13:00:00', true, true, 22, 6),
('beginner', '2024-11-23 16:00:00', true, true, 23, 7),
('beginner', '2024-11-22 11:00:00', true, true, 24, 8),
('advanced', '2024-11-21 13:00:00', true, true, 25, 5),
('beginner', '2024-11-16 14:00:00', true, true, 26, 6),
('intermediate', '2024-11-14 11:00:00', true, true, 27, 7),
('beginner', '2024-11-19 13:00:00', true, true, 28, 8),
('beginner', '2024-11-26 10:00:00', true, true, 29, 5),
('advanced', '2024-11-16 13:00:00', true, true, 30, 6),
('advanced', '2024-11-13 13:00:00', true, true, 31, 7),
('advanced', '2024-11-15 17:00:00', true, true, 32, 8),
('advanced', '2024-11-22 16:00:00', true, true, 33, 5),
('advanced', '2024-11-15 17:00:00', true, true, 34, 6),
('beginner', '2024-11-19 14:00:00', true, false, 35, 7),
('intermediate', '2024-11-20 10:00:00', true, false, 36, 8),
('beginner', '2024-11-24 12:00:00', true, false, 37, 5),
('intermediate', '2024-11-13 15:00:00', false, true, 38, 6),
('intermediate', '2024-11-13 12:00:00', false, true, 39, 7),
('advanced', '2024-11-17 10:00:00', true, false, 40, 8);

INSERT INTO student_lesson(student_id, lesson_id)
VALUES
(41, 21),
(42, 22),
(43, 23),
(44, 24),
(45, 25),
(46, 26),
(47, 27),
(48, 28),
(49, 29),
(50, 30),
(51, 31),
(52, 32),
(53, 33),
(54, 34),
(55, 35),
(56, 36),
(57, 37),
(58, 38),
(59, 39),
(60, 40),
(41, 22),
(42, 23),
(43, 24),
(44, 25),
(45, 26),
(46, 27),
(47, 28),
(48, 29),
(49, 30),
(50, 31),
(51, 32),
(52, 33),
(53, 34),
(54, 35),
(55, 36),
(56, 37),
(57, 38),
(58, 39),
(59, 40),
(60, 21),
(41, 23),
(42, 24),
(43, 25),
(44, 26),
(45, 27),
(46, 28),
(47, 29),
(48, 30),
(49, 31),
(50, 32),
(51, 33),
(52, 34),
(53, 35),
(54, 36),
(55, 37),
(56, 38),
(57, 39),
(58, 40),
(59, 21),
(60, 22);


INSERT INTO group_lesson (maximum_number_of_students, minimum_number_of_students, lesson_id)
VALUES
(20, 4, 21),
(5, 4, 22),
(15, 5, 23),
(20, 5, 24),
(5, 3, 25),
(20, 3, 26),
(10, 5, 27),
(10, 5, 28),
(20, 4, 29),
(10, 4, 30),
(15, 4, 31),
(15, 3, 32),
(5, 5, 33),
(10, 3, 34),
(20, 3, 35),
(5, 4, 36),
(20, 5, 37),
(20, 4, 38),
(15, 3, 39),
(20, 3, 40);

INSERT INTO ensemble (target_genre, group_lesson_id)
VALUES
('Pop', 21),
('Pop', 22),
('Orchestral', 23),
('Jazz', 24),
('Orchestral', 25),
('Experimental', 26),
('Jazz', 27),
('Pop', 28),
('Jazz', 29),
('Orchestral', 30),
('Classical', 31),
('Jazz', 32),
('Orchestral', 33),
('Experimental', 34),
('Orchestral', 35),
('Orchestral', 36),
('Orchestral', 37),
('Classical', 38),
('Pop', 39),
('Orchestral', 40);



----------------------------------------------------------------------------------------
-- INSTRUCTOR
----------------------------------------------------------------------------------------

INSERT INTO instructor_instrument (instrument_id, instructor_id)
VALUES
(21, 5),
(22, 6),
(23, 7),
(24, 8),
(25, 9),
(26, 5),
(27, 6),
(28, 7),
(29, 8),
(30, 5),
(31, 6),
(32, 7),
(33, 8),
(34, 5),
(35, 6),
(36, 7),
(37, 8),
(38, 5),
(39, 6),
(40, 7);


INSERT INTO available_hour (start_time, end_time, instructor_id)
VALUES
('2024-10-04 09:00:00', '2024-10-04 18:00:00', 5),
('2024-10-05 09:00:00', '2024-10-05 16:00:00', 6),
('2024-10-09 11:00:00', '2024-10-09 18:00:00', 7),
('2024-10-14 09:00:00', '2024-10-14 17:00:00', 8),
('2024-10-17 10:00:00', '2024-10-17 15:00:00', 9),
('2024-10-19 11:00:00', '2024-10-19 18:00:00', 5),
('2024-11-01 11:00:00', '2024-11-01 17:00:00', 6),
('2024-11-04 10:00:00', '2024-11-04 18:00:00', 7),
('2024-11-04 10:00:00', '2024-11-04 18:00:00', 8),
('2024-11-07 09:00:00', '2024-11-07 18:00:00', 9),
('2024-11-08 09:00:00', '2024-11-08 14:00:00', 5),
('2024-11-08 12:00:00', '2024-11-08 18:00:00', 6),
('2024-11-09 12:00:00', '2024-11-09 17:00:00', 7),
('2024-11-10 11:00:00', '2024-11-10 18:00:00', 8),
('2024-11-13 09:00:00', '2024-11-13 14:00:00', 9),
('2024-11-17 09:00:00', '2024-11-17 15:00:00', 5),
('2024-11-17 09:00:00', '2024-11-17 16:00:00', 6),
('2024-11-20 08:00:00', '2024-11-20 17:00:00', 7),
('2024-11-28 10:00:00', '2024-11-28 18:00:00', 8),
('2024-11-28 10:00:00', '2024-11-28 18:00:00', 9);



INSERT INTO instructor_receipt (current_month_salary_slip, instructor_id)
VALUES
(34240.22, 5),
(24771.96, 6),
(24048.36, 7),
(28776.65, 8),
(37009.55, 9),
(32958.75, 5),
(27296.31, 6),
(39826.00, 7),
(26076.60, 8),
(36561.19, 9),
(35048.23, 5),
(23404.24, 6),
(27599.91, 7),
(32831.93, 8),
(28047.42, 9),
(27103.70, 5),
(23909.84, 6),
(37027.80, 7),
(38614.55, 8),
(33834.84, 9);

INSERT INTO instructor_ensemble (instructor_id, ensemble_id)
VALUES
(5, 21),
(6, 22),
(7, 23),
(8, 24),
(9, 25),
(5, 26),
(6, 27),
(7, 28),
(8, 29),
(9, 30),
(5, 31),
(6, 32),
(7, 33),
(8, 34),
(9, 35),
(5, 36),
(6, 37),
(7, 38),
(8, 39),
(9, 40);


--------------------------------------------------------------------------------------------
-- database is built and populated
