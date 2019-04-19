-- create database prs
drop database if exists prs;
create database prs;
use prs;

-- create table user
create table user (
ID  int primary key not null auto_increment,
Username varchar(20) not null,
Password varchar(10) not null,
FirstName varchar(20) not null,
LastName varchar(20) not null,
PhoneNumber varchar(12) not null,
Email varchar(75) not null,
IsReviewer tinyint(1) not null,
IsAdmin tinyint(1) not null,
IsActive tinyint(1) not null,
DateCreated datetime not null,
DateUpdated datetime not null,
UpdatedByUser int not null
);

-- create table vendor
Create table vendor (
ID int primary key not null auto_increment,
Code varchar(10) not null,
Name varchar(255) not null,
Address varchar(255) not null,
City varchar(255) not null,
State varchar(2) not null,
Zip varchar(5) not null,
PhoneNumber varchar(12) not null,
Email varchar(100) not null,
IsPreApproved tinyint(1) not null,
IsActive tinyint(1) not null,
DateCreated datetime not null,
DateUpdated datetime not null,
UpdatedByUser int not null
);

-- create table purchaserequest
Create table purchaserequest (
ID int primary key not null auto_increment,
UserID int not null,
Description varchar(100) not null,
Justification varchar(255) not null,
DateNeeded Date not null,
DeliveryMode varchar(25) not null,
Status varchar(20) not null,
Total decimal(10,2) not null,
SubmittedDate datetime not null,
ReasonForRejection varchar(100),
IsActive tinyint(1) not null,
DateCreated datetime not null,
DateUpdated datetime not null,
UpdatedByUser int not null,
foreign key (UserID) references user (ID)
);

-- create table product
Create table product (
ID int primary key not null auto_increment,
VendorID int not null,
PartNumber varchar(50) not null,
Name varchar(150) not null,
Price decimal(10,2) not null,
Unit varchar(255),
PhotoPath varchar(255),
IsActive tinyint(1) not null,
DateCreated datetime not null,
DateUpdated datetime not null,
UpdatedbyUser int not null,
foreign key (VendorID) references vendor (ID)
);

-- create table purchaserequestlineitem
Create table purchaserequestlineitem (
ID int primary key not null auto_increment,
PurchaseRequestID int not null,
ProductID int not null,
Quantity int not null,
IsActive tinyint(1) not null,
DateCreated datetime not null,
DateUpdated datetime not null,
UpdatedByUser int not null,
foreign key (ProductID) references product (ID),
foreign key (PurchaseRequestID) references purchaserequest (ID)
);
