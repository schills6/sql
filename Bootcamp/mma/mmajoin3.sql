select i.orderdate, i.customername, p.description, l.quantity, p.price
	from lineitem l
		inner join product p on p.ID = l.productID
        inner join invoice i on i.ID = l.invoiceID;