# Project Description, the Soundgood Music School

The purpose is to facilitate information handling and business transactions for the Soundgood music school company, by developing a database which handles all the school's data and also an application that handles the operations specified in sections 1.1-1.3.

## Business Overview

Soundgood sells music lessons to students who want to learn to play an instrument. When someone wants to attend the school, they submit contact details, which instrument they want to learn, and their present skill. If there is room, the student is offered a place. There is no concept like 'course' or sets of lessons. Instead, students continue to take lessons as long as they wish. Students pay per lesson and instructors are payed per given lesson.

## Detailed Descriptions

### Lesson

There are individual lessons and group lessons. A group lesson has a specified number of places (which may vary), and is not given unless a minimum number of students enroll. A lesson is given for a particular instrument and a particular level. There are three levels, beginner, intermediate and advanced. Besides lessons for a particular instrument, there are also ensembles, where students playing different instruments participate at the same lesson. Ensembles have a specific target genre (e.g., punk rock, gospel band), and there is a maximum and minimum number of students also for ensembles.

Group lessons and ensembles are given at scheduled time slots. Individual lessons do not have a fixed schedule, but are rather to be seen as appointments, like for example an appointment with a dentist. Administrative staff must be able to make bookings, it must therefore be possible to understand which instructor is available when, and for which instruments.

There is no concept like 'course' or sets of lessons, a student who has been offered a place, and accepted, continue to take lessons as long as desired, and can either book one lesson at the time or book many lessons during a longer time period.

### Student

A student can take any number of lessons, for any number of instruments. Person number, name, address and contact details must be stored for each student. It must also be possible to store contact details for a contact person (e.g., parent) for each student. Furthermore, it must be possible to see which students are siblings, since there is a discount for siblings. It's not sufficient to show just whether a student has siblings, it must be possible to see who's a sibling of who.

### Instructor

An instructor can be assigned to group lessons and ensembles, and can also be available to give individual lessons during specified time periods. An instructor can teach a specified set of instruments, and may also be able to teach ensembles. Person number, name, address and contact details must be stored for each instructor.

### Student Payment

Students are charged monthly for all lessons taken during the previous month. Currently, there is one price for beginner and intermediate levels, and another price for the advanced level. Also, there are different prices for individual lessons, group lessons and ensembles. There is also a discount for siblings, if two or more siblings have taken lessons during the same month, they all get a certain percentage discount. Soundgood wants to have a high level of flexibility to change not just prices, but also pricing scheme. They might, for example, not always have the same price for beginner and intermediate lessons.

### Instructor Payment

There are no instructors with fixed monthly salaries, instead they are payed monthly for all lessons given during the previous month. Instructor payments depend on the same things as student fees (see above), namely level of lesson and whether a given lesson was a group or individual lesson. Instructor payments are not affected by sibling discounts.

### Renting Instruments

Soundgood offers students the ability to rent instruments to be delivered at their home. There is a wide selection of instruments, wind, string etc., supporting different brands and in different quantities in stock at the soundgood music school. Each student can rent up to two specific instruments at any given period, the renting happens with a lease up to 12 month period. Students can list and search current instruments and rent them if they don't exceed their two-instrument quota. Instruments are rented per month. The fee is payed the same way lessons are payed, each month students are charged for the instruments that where rented the previous month.

## Requirements on the Soundgood Music School Application

The database must store all data described above, in sections 1.1 and 1.2, but no other data. There will also be an application providing a user interface which can be used by administrative staff to manage student enrollments, instrument rentals, bookings and payments. In addition, the database will also be used to retrieve reports and statistics of all possible kinds, but a user interface is not required for that purpose. It will instead be done by manually querying the database.

The database will not be used for any financial purpose like bookkeeping, taxes or bank contacts. What is written above regarding student fees and instructor payments is only about calculating what sum shall be payed to or by who, and sending that information to Soundgood's financial system.
