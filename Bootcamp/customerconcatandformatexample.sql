SELECT name as 'contact name', 
		concat(city, ', ', state) as 'location', 
		concat ('$', format (sales,2)) as 'sales' 
FROM customer;
