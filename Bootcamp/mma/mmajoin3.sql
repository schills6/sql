select i.orderdate as 'Order Date', i.ordernumber as 'Order Number', 
 i.customername as 'Customer Name', p.code as 'Product Code', p.description as 'Title',
 li.quantity as 'Qty', p.price as 'Price'
	from lineitem li
		inner join 
			product p 
				on p.ID = li.productID
        inner join 
			invoice i
				on i.ID = li.invoiceID;