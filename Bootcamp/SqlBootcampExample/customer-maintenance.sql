select * from customer;
select * from customer
where name like '%A%.';

select * from customer
where name like 'a%'
and state = 'NJ';

-- Use a regular expression to return all records with names starting with a vowel
select * from customer
where name regexp "^[aeiou].*";

-- Insert
insert into customer values (15, 'Gibson Guitars', 'Memphis', 'TN', 7757779000, 1);

insert into customer (Name, City, State, Sales, Active) 
Values ('Ibanez', 'Bensalem', 'PA', 56677887, 1),
('Ibanez', 'Bensalem', 'PA', 56677887, 1);

update customer 
set name = 'Pearl', 
	city = 'Test',
    state = 'TE'
    where id = '17';
    
-- Update
update customer
	set name = 'Yamaha',
    city = 'Yomaha',
    state = 'NE'
    where id = '18';

-- Delete
delete from customer
where id =18;

-- select using 'in' clause
select * from customer
where id in (10, 11, 12);
