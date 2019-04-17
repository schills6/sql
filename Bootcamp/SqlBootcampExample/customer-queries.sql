SELECT * 
	FROM customer 
    where sales >30000000 
    and sales <70000000
    ORDER BY Sales desc; 
    
    select name as 'Customer Name', sales as 'Total Sales'
    from customer;