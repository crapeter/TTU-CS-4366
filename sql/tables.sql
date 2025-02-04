-- SQL: Database Creation
CREATE DATABASE capstone_project;

-- SQL: Set the database to use
USE capstone_project;

-- SQL: CREATE TABLE Statements for the ER Diagram
-- Open this file in MySQL Workbench and then execute the script to generate the tables.
CREATE TABLE Course (
    CourseId INT PRIMARY KEY,
    Department VARCHAR(255) NOT NULL,
    CourseNum VARCHAR(255) UNIQUE NOT NULL,
    Prerequisites VARCHAR(255),
    CourseDesc TEXT
);

CREATE TABLE Section (
    SectionId INT PRIMARY KEY,
    CourseId INT NOT NULL,
    TAs_Required INT NOT NULL,
    FOREIGN KEY (CourseId) REFERENCES Course(CourseId) ON DELETE CASCADE
);

CREATE TABLE Instructor (
    InstructorId INT PRIMARY KEY,
    F_name VARCHAR(255) NOT NULL,
    M_name VARCHAR(255),
    L_name VARCHAR(255) NOT NULL,
    InsPreferences TEXT
);

CREATE TABLE TA (
    TAId INT PRIMARY KEY,
    F_name VARCHAR(255) NOT NULL,
    M_name VARCHAR(255),
    L_name VARCHAR(255) NOT NULL,
    Max_Hours INT NOT NULL,
    Experience TEXT,
    Preferences TEXT,
    Grad_Level VARCHAR(255) CHECK (Grad_Level IN ('Masters', 'PhD'))
);

CREATE TABLE Grader (
    GraderId INT PRIMARY KEY,
    TAId INT NOT NULL,
    Hours INT NOT NULL,
    FOREIGN KEY (TAId) REFERENCES TA(TAId) ON DELETE CASCADE
);

CREATE TABLE Supervises (
    InstructorId INT NOT NULL,
    TAId INT NOT NULL,
    PRIMARY KEY (InstructorId, TAId),
    FOREIGN KEY (InstructorId) REFERENCES Instructor(InstructorId) ON DELETE CASCADE,
    FOREIGN KEY (TAId) REFERENCES TA(TAId) ON DELETE CASCADE
);

CREATE TABLE Teaches (
    InstructorId INT NOT NULL,
    SectionId INT NOT NULL,
    PRIMARY KEY (InstructorId, SectionId),
    FOREIGN KEY (InstructorId) REFERENCES Instructor(InstructorId) ON DELETE CASCADE,
    FOREIGN KEY (SectionId) REFERENCES Section(SectionId) ON DELETE CASCADE
);

CREATE TABLE Contains (
    CourseId INT NOT NULL,
    SectionId INT NOT NULL,
    PRIMARY KEY (CourseId, SectionId),
    FOREIGN KEY (CourseId) REFERENCES Course(CourseId) ON DELETE CASCADE,
    FOREIGN KEY (SectionId) REFERENCES Section(SectionId) ON DELETE CASCADE
);

-- SQL: Shows the tables that were created
-- This command is specific to MySQL. If you are using a different SQL variant, you may need to adjust this command.
SHOW TABLES;