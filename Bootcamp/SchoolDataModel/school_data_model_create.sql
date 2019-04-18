drop database if exists sdb;
Create database sdb;
use sdb;

Create table Course (
	ID int not null primary key auto_increment,
    Number nvarchar(6) not null,
    Subject nvarchar(25) not null,
    Name nvarchar(50) not null
    );

Create table Student (
	ID int not null primary key auto_increment,
    FirstName nvarchar(25) not null,
    LastName nvarchar(25) not null,
    StreetAddress nvarchar(50) not null,
    City nvarchar(25) not null,
    State nvarchar(2) not null,
    Zip nvarchar(5) not null,
    Birthdate date not null,
    PhoneNumber nvarchar(10) not null,
    Email nvarchar(50) not null,
    SSN nvarchar(11) not null
    );

Create table Enrollment (
	ID int not null primary key auto_increment,
    StudentID int not null,
    CourseID int not null,
    Grade decimal(5,2),
    Foreign key (StudentID) references Student (ID),
    Foreign key (CourseID) references Course (ID)
);

Create table Instructor (
	ID int not null primary key auto_increment,
    CourseID int not null,
    FirstName nvarchar(25) not null,
    LastName nvarchar(25) not null,
    Foreign key (CourseID) references Course (ID)
);

INSERT INTO Student VALUES
(1, 'Erin', 'Heinrich', '5894 Laurel Run Dr.', 'Liberty Twp', 'OH', '45011', '1979-07-08', '5135931666', 'schills@gmail.com', '123456789'),
(2, 'Ryan', 'Heinrich', '5894 Laurel Run Dr.', 'Liberty Twp', 'OH', '45011', '1979-09-30', '5137952584', 'heinrich.ryan@gmail.com', '345678901'),
(3, 'Emmett', 'Heinrich', '5894 Laurel Run Dr.', 'Liberty Twp', 'OH', '45011', '2013-03-13', '5135931666', 'schills@gmail.com', '456789012'),
(4, 'Karen', 'Schilling', '613 White Oak Dr.', 'Oxford', 'OH', '45056', '1949-06-21', '5135234520', 'schillk@miamioh.edu', '567890123'),
(5, 'Karl', 'Schilling', '613 White Oak Dr.', 'Oxford', 'OH', '45056', '1949-06-03', '5135234520', 'schillkl@miamioh.edu','678901234');

INSERT INTO Course VALUES
(1, 'ENG101', 'English', 'Basic Spells'),
(2, 'BIO101', 'Science', 'Magical Plants'),
(3, 'HST101', 'History', 'History of Magic'),
(4, 'PE101', 'Physical Education', 'Defense Against Dark Arts'),
(5, 'HST201', 'History', 'Wizards of Note'),
(6, 'CHM101', 'Science', 'Basic Potions'),
(7, 'ENG201', 'English', 'Advanced Spells'),
(8, 'PE201', 'Physical Education', 'Quidditch Basics');

INSERT INTO Instructor VALUES
(1, 4, 'Albus', 'Dumbledore'),
(2, 5, 'Albus', 'Dumbledore'),
(3, 4, 'Severus', 'Snape'),
(4, 1, 'Dolores', 'Umbridge'),
(5, 2, 'Sybil', 'Trelawney'),
(6, 8, 'Minerva', 'McGonagall');

INSERT INTO Enrollment VALUES
(1, 1, 2, 90.5),
(2, 3, 8, 100),
(3, 2, 8, 55),
(4, 4, 6, 88.25);

CREATE USER sdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON sdb.* TO sdb_user@localhost;
