-- create and select the database
drop database if exists bank_db;
create database bank_db;
use bank_db;

-- create the accounts table
create table Accounts (
	ID int not null primary key auto_increment,
    account_holder varchar(50) not null,
    balance decimal(6,2) not null,
    fees decimal (6,2) not null
    );
    
 -- create the transactions table   
create table Transactions (
	ID int not null primary key auto_increment,
    amount decimal (6,2) not null,
    txn_type varchar(50) not null,
    account_ID int not null, 
    foreign key (account_ID) references accounts(ID)
    );
 
-- insert records
insert Accounts (account_holder, balance, fees) Values ('Anna Bengel', 8888.00, 250.00);
insert Accounts (account_holder, balance, fees) Values ('Chase Williams', 5444.00, 175.00);
insert Accounts (account_holder, balance, fees) Values ('Jonelle Wehrman', 3333.00, 88.00);
insert Accounts (account_holder, balance, fees) Values ('Steven Ross', 3322.00, 88.00);

insert Transactions (amount, txn_type, account_ID) Values (500.00, 'Deposit', 3);
insert Transactions (amount, txn_type, account_ID) Values (-200.00, 'Withdrawal', 4);
insert Transactions (amount, txn_type, account_ID) Values (200.00, 'Deposit', 4);
insert Transactions (amount, txn_type, account_ID) Values (248.00, 'Deposit', 1);

    
    