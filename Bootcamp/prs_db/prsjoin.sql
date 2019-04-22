SELECT * FROM prs.purchaserequest;

select concat(u.firstname," ",u.lastname) as Name, pr.description, p.name, p.price, prli.quantity, pr.total, pr.deliverymode, pr.dateneeded
	from purchaserequestlineitem prli
		inner join product p
			on prli.productid=p.id
		inner join purchaserequest pr
			on prli.purchaserequestid=pr.id
		inner join user u
			on pr.userid=u.id;
            