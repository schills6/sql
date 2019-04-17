select i.orderdate as 'Order Date', i.ordernumber as 'Order Number', i.id as 'Customer ID',
 i.customername as 'Customer Name', p.description as 'Title', l.quantity as 'Qty', p.price as 'Price'
	from lineitem l
		inner join 
			product p 
				on p.ID = l.productID
        inner join 
			invoice i
				on i.ID = l.invoiceID;