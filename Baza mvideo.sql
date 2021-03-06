
CREATE TABLE Laptop (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	ssd int NOT NULL ,
	ram smallint NOT NULL ,
	cores real NOT NULL ,
	price decimal(12,2) NULL ,
	screen tinyint NOT null 
); 

CREATE TABLE PC (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	CPU smallint NOT NULL ,
	ram smallint NOT NULL ,
	processor text NOT NULL ,
	ssd varchar (10) NOT NULL ,
	price decimal(12,2) NULL 
); 


CREATE TABLE Product (
	maker varchar (10) NOT NULL ,
	model varchar (50) NOT NULL ,
	type varchar (50) NOT NULL 
); 


CREATE TABLE Printer (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	color char (1) NOT NULL ,
	`type` varchar (10) NOT NULL ,
	price decimal(12,2) NULL 
); 


CREATE TABLE Apple (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	color text NOT NULL ,
	`type` varchar (10) NOT NULL ,
	price decimal(12,2) NULL 
);


CREATE TABLE drives (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	color text NOT NULL ,
	`type` varchar (10) NOT NULL ,
	price decimal(12,2) NULL 
);

CREATE TABLE graphics (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	color text NOT NULL ,
	`type` varchar (10) NOT NULL ,
	price decimal(12,2) NULL 
);

CREATE TABLE Housings (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	color text NOT NULL ,
	`type` varchar (20) NOT NULL ,
	price decimal(12,2) NULL 
);

CREATE TABLE Processors (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	color text NOT NULL ,
	`type` varchar (20) NOT NULL ,
	price decimal(12,2) NULL 
);

CREATE TABLE TV (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	color text NOT NULL ,
	`type` varchar (20) NOT NULL ,
	price decimal(12,2) NULL 
);


CREATE TABLE fridge (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	color text NOT NULL ,
	`type` varchar (20) NOT NULL ,
	price decimal(12,2) NULL 
);

ALTER TABLE TV ADD 
	CONSTRAINT PK_TV PRIMARY KEY 
	(
		code
	); 

ALTER TABLE fridge ADD 
	CONSTRAINT PK_fridge PRIMARY KEY 
	(
		code
	); 

ALTER TABLE Processors ADD 
	CONSTRAINT PK_Processors PRIMARY KEY 
	(
		code
	); 

ALTER TABLE graphics ADD 
	CONSTRAINT PK_graphics PRIMARY KEY 
	(
		code
	);

ALTER TABLE Housings ADD 
	CONSTRAINT PK_Housings PRIMARY KEY 
	(
		code
	); 

ALTER TABLE drives ADD 
	CONSTRAINT PK_drives PRIMARY KEY 
	(
		code
	);   


ALTER TABLE Apple ADD 
	CONSTRAINT PK_Apple PRIMARY KEY 
	(
		code
	);   


ALTER TABLE Laptop ADD 
	CONSTRAINT PK_Laptop PRIMARY KEY 
	(
		code
	);   


ALTER TABLE PC ADD 
	CONSTRAINT PK_pc PRIMARY KEY 
	(
		code
	);   


ALTER TABLE Product ADD 
	CONSTRAINT PK_product PRIMARY KEY 
	(
		model
	);   


ALTER TABLE Printer ADD 
	CONSTRAINT PK_printer PRIMARY KEY 
	(
		code
	);   


ALTER TABLE Laptop ADD 
	CONSTRAINT FK_Laptop_product FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);


ALTER TABLE PC ADD 
	CONSTRAINT FK_pc_product FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);


ALTER TABLE Printer ADD 
	CONSTRAINT FK_printer_product FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);

ALTER TABLE apple ADD 
	CONSTRAINT FK_apple_product FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);

ALTER TABLE drives ADD 
	CONSTRAINT FK_drives FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);

ALTER TABLE graphics ADD 
	CONSTRAINT FK_graphics FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);

ALTER TABLE Housings ADD 
	CONSTRAINT FK_Housings FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);

ALTER TABLE Processors ADD 
	CONSTRAINT FK_Processors FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);

ALTER TABLE TV ADD 
	CONSTRAINT FK_TV FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);

ALTER TABLE fridge ADD 
	CONSTRAINT FK_fridge FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	);

/*----Product------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into Product values('Mac','30049645','PC')
,('Mac','30049644','PC')
,('Mac','30049646','PC')
,('Mac','30049648','PC')
,('Mac','30049649','PC')
,('Mac','30049662','PC')
,('Mac','30050304','PC')
,('A','1276','Printer')
,('D','1288','Printer')
,('16Gb','Z127','Laptop')
,('16Gb','Z124','Laptop')
,('16Gb','Z12A','Laptop')
,('16Gb','Z124S','Laptop')
,('16Gb','Z127S','Laptop')
,('A','1401','Printer')
,('A','1408','Printer')
,('D','1433','Printer')
,('E','1434','Printer')
,('32Gb','MN8X2RU/A','Apple')
,('32Gb','MN912RU/A','Apple')
,('32Gb','MN8Y2RU/A','Apple')
,('32Gb','MN902RU/A','Apple')
,('32Gb','MNQM2RU/A','Apple')
,('240Gb','Kingston','drives')
,('240Gb','Crucial','drives')
,('240Gb','ADATA','drives')
,('128Gb','Goodram','drives')
,('250Gb','HP','drives')
,('120Gb','Toshiba','drives')
,('8Gb','GIGABYTE','graphics')
,('6Gb','N2060OC','graphics')
,('8Gb','dual-rx580-o8g','graphics')
,('3.5kg','HIPER','Housings')
,('4.5kg','Sharkoon','Housings')
,('6.59kg','MasterBox','Housings')
,('14.2kg','MasterCase','Housings')
,('3.1kg','Cooler','Housings')
,('2','AD9500AHABBOX','Processors')
,('Samsung','QE65Q900TSU','TV')
,('Sharp','SJPX99FBE','fridge')
;

                                                                                                                                                                                                                                                                 
/*----PC------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into PC values(1,'30049644',3,16,'Intel Core i5','1000',160990)
,(2,'30049645',3,32,'Intel Core i5','1000',190990)
,(3,'30049646',3,64,'Intel Core i5','1000',229990)
,(4,'30049648',3,16,'Intel Core i5','2000',190990)
,(5,'30049649',3,32,'Intel Core i5','2000',229990)
,(6,'30049662',3,64,'Intel Core i5','2000',277990)
,(7,'30050304',1,96,'Intel Xeon W','1000',583990)
;

                                                                                                                                                                                                                                                                 
/*----Laptop------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into Laptop values(1,'Z127',256,16,8,120000,13)
,(2,'Z124',256,16,8,120000,13)
,(3,'Z12A',256,16,8,120000,13)
,(4,'Z124S',512,16,8,140000,13)
,(5,'Z127S',2000000,16,8,197000,13)
;


                                                                                                                                                                                                                                                                 
/*----Printer------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into Printer values(1,'1276','n','Laser',400)
,(2,'1433','y','Jet',270)
,(3,'1434','y','Jet',290)
,(4,'1401','n','Matrix',150)
,(5,'1408','n','Matrix',270)
,(6,'1288','n','Laser',400)
;

/*----Apple------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into Apple values(1,'MN8X2RU/A','Black','iPhone 7',27000)
,(2,'MN912RU/A','Rose Gold','iPhone 7',27000)
,(3,'MN8Y2RU/A','Silver','iPhone 7',27000)
,(4,'MN902RU/A','Gold','iPhone 7',27000)
,(5,'MNQM2RU/A','Black','Plus 7',32000)
;

/*----drives------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into drives values(1,'Kingston','Black','SSD',2800)
,(2,'Crucial','Black','SSD',2700)
,(3,'ADATA','Black','SSD',2500)
,(4,'Goodram','Black','SSD',1700)
,(5,'HP','Black','SSD',3200)
,(6,'Toshiba','Gray','SSD',4500)
;

/*----graphics------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into graphics values(1,'GIGABYTE','Black','RTX',68000)
,(2,'N2060OC','Black','RTX',31000)
,(3,'dual-rx580-o8g','Black','ASUS',30000)
;

/*----Housings------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into Housings values(1,'HIPER','Black','HG-C101',2200)
,(2,'Sharkoon','Black','VS4-S',2200)
,(3,'MasterBox','Black','MCW-L5S3-KGNN-02',5700)
,(4,'MasterCase','Black','H500M',22000)
,(5,'Cooler','Black','Elite 130',4500)
;

/*----Processors------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into Processors values(1,'AD9500AHABBOX','Black','A6-9500E',3300)
;

/*----TV------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into TV values(1,'QE65Q900TSU','Black','Quantum HDR',450000)
;

/*----fridge------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
insert into fridge values(1,'SJPX99FBE','Black','Hybrid Cooling',266000)
;
