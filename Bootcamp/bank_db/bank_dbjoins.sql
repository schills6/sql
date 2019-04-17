-- wrong way to do a join
SELECT account_holder, txn_type, amount
FROM account, transaction
where account.ID = transaction.account_ID;

-- right way to do an inner join
select account_holder, txn_type, amount
	from account a
		inner join 
			transaction t
				on a.ID = t.account_ID;

-- left outer join
select account_holder, txn_type, amount
	from account a
		left outer join 
			transaction t
			on a.id = t.account_ID;

