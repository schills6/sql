SELECT s.FirstName, s.LastName, c.Number as 'Course Number', c.Subject, i.FirstName as 'Instructor FirstName', i.LastName as 'Instructor LastName', e.Grade
	from enrollment e
		inner join student s
			on s.ID = e.StudentID
		inner join course c
			on c.ID = e.CourseID
		inner join instructor i
			on c.ID = i.CourseID;