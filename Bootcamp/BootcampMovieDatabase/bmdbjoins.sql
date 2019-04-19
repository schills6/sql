
Select A.FirstName, A.LastName, M.Title, M.Rating, M.Year, G.Name, C.Role
	from Movie m
		inner join Credit c
			on m.ID = c.MovieID
		inner join Actor a
			on a.ID = c.ActorID
		inner join Moviegenre mg
			on m.ID = mg.MovieID
		inner join Genre g
			on g.ID = mg.GenreID

order by m.Title;


    