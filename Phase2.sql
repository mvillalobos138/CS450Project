-- Students: Michael Villalobos & Hanish Moola
-- Project Phase 2
-- Instructor: Dr. Jessica Lin

drop table Hotel cascade constraints;
drop table Room cascade constraints;
drop table Customer cascade constraints;
drop table Date_List cascade constraints;
drop table Reservation cascade constraints;
drop table Makes cascade constraints;
drop table R_with cascade constraints;
drop table Check_In cascade constraints;
drop table Check_Out cascade constraints;
drop table Check_Available cascade constraints;
drop table Has cascade constraints;

create table Hotel(
	Branch_ID integer, 
	H_Name varchar2(20), 
	City varchar2(15), 
	Street_Name varchar2(15), 
	Street_Num integer, 
	State varchar2(2), 
	Phone_Number integer, 
	Primary key(Branch_ID, H_Name)
	);

create table Room(
	R_Type varchar2(10), 
--	R_Number integer, 
	Capacity integer, 
--	Quantity integer, 
--	Num_Available integer, 
	Price integer, 
	Primary key(R_Type),
	Unique (Price),
--	Unique (R_Type),
--	Unique (Num_Available),
	Unique (Capacity)
--	Unique (Quantity)
	);

create table Customer(
	C_ID varchar2(5), 
	C_Name varchar2(15), 
	Age integer, 
	Gender varchar2(7), 
	Primary key(C_ID)
	);

create table Date_List(
	R_Date varchar2(10), 
	Primary key(R_Date)
	);

create table Reservation(
	Res_Num varchar2(7), 
	Party_Size integer, 
	Price integer, 
	Primary key(Res_Num),
    Unique (Party_Size),	
	Foreign key (Price) references Room(Price)
	);

create table Makes(
	Res_Num varchar2(7),
	C_ID varchar2(5),
	Party_Size integer,
	Price integer,
	Primary Key(Res_Num),
	Foreign Key (Res_Num) references Reservation(Res_Num),
	Foreign Key (C_ID) references Customer (C_ID),
	Foreign Key (Party_Size) references Reservation (Party_Size),
	Foreign Key (Price) references Room(Price)
	);

create table R_with(
	Res_Num varchar2(7),
	Branch_ID integer, 
	H_Name varchar2(20), 
	R_Type varchar2(10), 
	Primary Key (Res_Num),
	Foreign Key (Res_Num) references Reservation(Res_Num),
	Foreign Key (Branch_ID, H_Name) references Hotel(Branch_ID, H_Name),
	Foreign Key (R_Type) references Room (R_Type)
	);

create table Check_In(
	Res_Num varchar2(7),
	R_Date varchar2(10),
	Primary Key (Res_Num),
	Foreign Key (Res_Num) references Reservation(Res_Num),
	Foreign Key (R_Date) references Date_List(R_Date)
	);

create table Check_Out(
	Res_Num varchar2(7),
	R_Date varchar2(10),
	Primary Key (Res_Num),
	Foreign Key (Res_Num) references Reservation(Res_Num),
	Foreign Key (R_Date) references Date_List(R_Date)
	);

create table Check_Available(
	Res_Num varchar2(7),
	R_Date varchar2(10),
	Branch_ID integer, 
	H_Name varchar2(20), 
	R_Type varchar2(10),
--	Num_Available integer,
--	Capacity integer,
	Price integer,
	Primary Key (Res_Num),
	Foreign Key (Res_Num) references Reservation(Res_Num),
	Foreign Key (R_Date) references Date_List(R_Date),
	Foreign Key (Branch_ID, H_Name) references Hotel(Branch_ID, H_Name),
	Foreign Key (R_Type) references Room (R_Type),
--	Foreign Key (Num_Available) references Has(Num_Available),
--	Foreign Key (Capacity) references Room (Capacity),
	Foreign Key (Price) references Room (Price)
	);

create table Has(
	Branch_ID integer, 
	H_Name varchar2(20), 
	R_Type varchar2(10),
	Quantity integer,
	Primary Key (Branch_ID, H_Name),
	Foreign Key (Branch_ID, H_Name) references Hotel (Branch_ID, H_Name),
	Foreign Key (R_Type) references Room(R_Type));
