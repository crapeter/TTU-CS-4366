-- Goal of the program is to assign TAs to sections based on their availability, experience and preferences
-- This entails an algorithm that takes into consideration the number of TAs required for each section, the maximum hours each TA can work, and the experience and preferences of each TA.
-- The final result is to be able to assign TAs to sections in a way that maximizes the efficiency of the teaching assistants and meets the needs of the instructors.

-- SQL: Set the database to use
USE capstone_project;

-- Insert dummy data into Course table
INSERT INTO Course (CourseId, Department, CourseNum, Prerequisites, CourseDesc) VALUES
(1, 'Computer Science', 'CS101', NULL, 'Introduction to Computer Science'),
(2, 'Computer Science', 'CS102', 'CS101', 'Data Structures'),
(3, 'Mathematics', 'MATH101', NULL, 'Calculus I'),
(4, 'Mathematics', 'MATH102', 'MATH101', 'Calculus II'),
(5, 'Physics', 'PHYS101', NULL, 'General Physics I'),
(6, 'Physics', 'PHYS102', 'PHYS101', 'General Physics II'),
(7, 'Biology', 'BIO101', NULL, 'Introductory Biology'),
(8, 'Biology', 'BIO102', 'BIO101', 'Cell Biology'),
(9, 'Chemistry', 'CHEM101', NULL, 'General Chemistry I'),
(10, 'Chemistry', 'CHEM102', 'CHEM101', 'General Chemistry II'),
(11, 'Engineering', 'ENGR101', NULL, 'Introduction to Engineering'),
(12, 'Engineering', 'ENGR102', 'ENGR101', 'Mechanics'),
(13, 'History', 'HIST101', NULL, 'World History I'),
(14, 'History', 'HIST102', 'HIST101', 'World History II'),
(15, 'Philosophy', 'PHIL101', NULL, 'Introduction to Philosophy'),
(16, 'Philosophy', 'PHIL102', 'PHIL101', 'Ethics'),
(17, 'Psychology', 'PSY101', NULL, 'General Psychology'),
(18, 'Psychology', 'PSY102', 'PSY101', 'Cognitive Psychology'),
(19, 'Economics', 'ECON101', NULL, 'Microeconomics'),
(20, 'Economics', 'ECON102', 'ECON101', 'Macroeconomics');

-- Insert dummy data into Section table
-- Organized by CourseId, with 2 sections for each course
INSERT INTO Section (SectionId, CourseId, TAs_Required) VALUES
(1, 1, 2), (2, 1, 2),
(3, 2, 3), (4, 2, 3),
(5, 3, 1), (6, 3, 1),
(7, 4, 2), (8, 4, 2),
(9, 5, 2), (10, 5, 2),
(11, 6, 3), (12, 6, 3),
(13, 7, 1), (14, 7, 1),
(15, 8, 2), (16, 8, 2),
(17, 9, 2), (18, 9, 2),
(19, 10, 3), (20, 10, 3),
(21, 11, 1), (22, 11, 1),
(23, 12, 2), (24, 12, 2),
(25, 13, 1), (26, 13, 1),
(27, 14, 2), (28, 14, 2),
(29, 15, 1), (30, 15, 1),
(31, 16, 2), (32, 16, 2),
(33, 17, 2), (34, 17, 2),
(35, 18, 3), (36, 18, 3),
(37, 19, 1), (38, 19, 1),
(39, 20, 2), (40, 20, 2);

-- Insert dummy data into Instructor table
INSERT INTO Instructor (InstructorId, F_name, M_name, L_name, InsPreferences) VALUES
(1, 'John', 'A', 'Doe', 'Prefers morning classes'),
(2, 'Jane', 'B', 'Smith', 'Enjoys large lectures'),
(3, 'Robert', 'C', 'Brown', 'Prefers research-oriented classes'),
(4, 'Emily', 'D', 'Davis', 'Interested in interdisciplinary courses'),
(5, 'Michael', 'E', 'Wilson', 'Prefers hands-on courses');

-- Insert dummy data into TA table
INSERT INTO TA (TAId, F_name, M_name, L_name, Max_Hours, Experience, Preferences, Grad_Level) VALUES
(1, 'Alice', 'D', 'Johnson', 20, '2 years experience', 'Prefers CS courses', 'Masters'),
(2, 'Bob', 'E', 'Williams', 10, '1 year experience', 'Enjoys Mathematics', 'PhD'),
(3, 'Charlie', 'F', 'Davis', 20, '3 years experience', 'Likes Physics', 'Masters'),
(4, 'David', 'G', 'Miller', 10, '1.5 years experience', 'Interested in Engineering', 'PhD'),
(5, 'Eve', 'H', 'Anderson', 20, '2.5 years experience', 'Enjoys History', 'Masters');

-- Insert dummy data into Teaches table
INSERT INTO Teaches (InstructorId, SectionId) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10);

-- Insert dummy data into Contains table
INSERT INTO Contains (CourseId, SectionId) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10);