Drop database if exists bmdb;
Create database bmdb;
Use bmdb;

Create table Movie (
ID int not null primary key auto_increment,
Title varchar(100) not null,
Rating varchar(5) not null,
Year year not null,
Director varchar(50) not null
);

Create table Actor (
ID int not null primary key auto_increment,
FirstName varchar(25) not null,
LastName varchar(25) not null,
Gender varchar(6) not null,
Birthdate date not null
);

Create table Genre (
ID int not null primary key auto_increment,
Name varchar(25) not null
);

Create table MovieGenre (
ID int not null primary key auto_increment,
MovieID int not null,
GenreID int not null,
foreign key (MovieID) references Movie(ID),
foreign key (GenreID) references Genre(ID)
);

Create table Credit (
ID int not null primary key auto_increment,
MovieID int not null,
ActorID int not null,
Role varchar(25) not null,
foreign key (MovieID) references Movie(ID),
foreign key (ActorID) references Actor(ID)
);

Insert into Actor Values
(1, 'Emily', 'Blunt', 'female', '1983-02-23'),
(2, 'Lin-Manuel', 'Miranda', 'male', '1980-01-16'),
(3, 'Julie', 'Andrews', 'female', '1935-10-01'),
(4, 'John', 'Travolta', 'male', '1954-02-18'),
(5, 'Olivia', 'Newton-John', 'female', '1948-09-26'),
(6, 'Tim', 'Curry', 'male', '1946-04-19'),
(7, 'Susan', 'Sarandon', 'female', '1946-10-04');

Insert into Movie Values
(1, 'Mary Poppins Returns', 'PG', 2018, 'Rob Marshall'),
(2, 'Mary Poppins', 'G', 1964, 'Robert Stevenson'),
(3, 'Grease', 'PG-13', 1978, 'Randal Kleiser'),
(4, 'The Rocky Horror Picture Show', 'R', 1975, 'Jim Sharman'),
(5, 'Newsies', 'PG', 1992, 'Kenny Ortega'),
(6, 'Sound of Music', 'G', 1965, 'Robert Wise');

Insert into Genre Values
(1, 'Musical'),
(2, 'Family'),
(3, 'Romance'),
(4, 'Horror'),
(5, 'Historical');

Insert into Credit Values
(1, 1, 2, 'Jack'),
(2, 1, 1, 'Mary Poppins'),
(3, 2, 3, 'Mary Poppins'),
(4, 3, 4, 'Danny Zuko'),
(5, 3, 5, 'Sandy'),
(6, 4, 6, 'Dr. Frankenfurter'),
(7, 6, 3, 'Maria'),
(8, 4, 7, 'Janet');

Insert into MovieGenre Values
(1, 1, 1),
(2, 1, 2), 
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 3),
(7, 4, 1),
(8, 4, 4),
(9, 5, 5),
(10, 5, 1),
(11, 6, 1),
(12, 6, 5),
(13, 6, 2);



CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;