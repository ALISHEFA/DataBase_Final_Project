create table customer(
	NationalID varchar	PRIMARY KEY,
	Name varchar(20) NOT null,
	familyName varchar(20),
	street varchar,
	city varchar(20),
	province varchar(20),
	phoneNumber varchar
	 
	
); -- done
 
create table customerNumber(
	NationalID varchar(20) PRIMARY KEY ,
	phoneNumber varchar UNIQUE
);--done 
create table distributer (
	ID varchar(20) PRIMARY KEY,
	Name varchar(20) NOT NULL,
	address varchar(20),
	working_hours varchar(20),
	all_money varchar
); --done
create table brand(
	ID varchar(20), 
	comp_id varchar(20),
	Name varchar(20),
	EstDate varchar(20),
	comp_license varchar(20),
	comp_name varchar(20),
	foreign key (comp_id,comp_license,comp_name) REFERENCES compony(comp_ID,license_number,name),
	primary key (ID,comp_id,Name)
);--done
create table product (
	ID varchar(20) primary key,
	Name varchar(20) UNIQUE , 
	weight varchar(20), 
	brand_id varchar(20),
	comp_id varchar(20),
	brand_name varchar(20),
	type_id varchar,
	type_name varchar,
	--foreign key (type_id,type_name) references type(type_id,name),
	foreign key (brand_id,comp_id,brand_name) REFERENCES brand(ID,comp_id,Name)
); --done
create table distributer_products ( 
	Distributer_ID varchar(20) PRIMARY KEY, 
	product_id varchar(20) NOT null,
	foreign key (product_id) REFERENCES product(ID)
	
);--done
create table distributer_email ( 
	distributer_ID varchar(20) primary key,
	email varchar(20)
); --done
create table product_price( 
	product_ID varchar(20) PRIMARY KEY ,
	price varchar(20)
); --done
create table compony (
	comp_ID varchar(20),
	license_number varchar(20),
	name varchar(20),
	estDate varchar(20),
	storeAddress varchar(20),
	primary key (comp_ID,license_number,name)
	
);--done
create table customer_order(
	order_id varchar(20) primary key,
	costomer_id varchar(20) unique not null,
	foreign key (costomer_id) REFERENCES customer(NationalID)
);--done
create table the_order (
	order_id varchar(20) primary key ,
	product_id varchar(20), 
	dist_id varchar(20),
	customer_id varchar,
	quntity int ,
	foreign key (customer_id) references customer(NationalID),
	foreign key (product_id) REFERENCES product(ID),
	foreign key (dist_id) REFERENCES distributer(ID)
);--done
create table type (
	type_id varchar(20), 
	Name varchar(20) , 
	product_id varchar(20) , 
	foreign key (product_id) REFERENCES product(ID),
	primary key (type_id, Name)
);--done

