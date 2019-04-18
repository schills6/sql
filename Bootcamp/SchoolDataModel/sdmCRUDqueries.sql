SELECT * FROM student;


delete from student where FirstName = 'Karl' and ID = 5;

insert into student values (5, 'Karl', 'Schilling', '613 White Oak Dr.', 'Oxford', 'OH', '45056', '1949-06-03', '5135234520', 'schillkl@miamioh.edu', '678901234');

update student set City = 'Liberty Township' where City = 'Liberty Twp' and ID between 1 and 5;