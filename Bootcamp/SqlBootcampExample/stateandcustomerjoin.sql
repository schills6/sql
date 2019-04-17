Select c.Name, c.City, s.Name
	from customer c
		inner join
			state s
				on c.State = s.Code