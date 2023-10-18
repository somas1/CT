# Building the Database.
When deciding the order of the tables below to build, look for tables without foreign keys. Tables with foreign keys need another table to exist before they can be built.

![image](attachments/Car%20Dealership%20ERD.svg)

## Tables without Foreign Keys
### A. Salesperson
```sql
create table salesperson_jt(
  salesperson_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  contact_number VARCHAR(20)
);
```
### B. Car
```sql
create table car_jt(
  VIN SERIAL PRIMARY KEY,
  make VARCHAR(100),
  model_ VARCHAR(100)
);
```
### C. Customer
```sql
create table customer_jt(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  contact_number VARCHAR(20)
);
```
### D. Mechanic
```sql
create table mechanic_jt(
  mechanic_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);
```

## Tables with Foreign Keys
### A. Invoice
```sql
create table invoice_jt(
  invoice_id SERIAL PRIMARY KEY,
  date DATE,
  cost NUMERIC(10,2),
  VIN INTEGER,
  salesperson_id INTEGER,
  customer_id INTEGER,
  FOREIGN KEY(VIN) references car_jt(VIN),
  FOREIGN KEY(salesperson_id) references salesperson_jt(salesperson_id),
  FOREIGN KEY(customer_id) references customer_jt(customer_id)
);
```
### B. Service Ticket
```sql
create table service_ticket_jt(
  service_id SERIAL PRIMARY KEY,
  VIN INTEGER NOT NULL,
  customer_id INTEGER,
  description VARCHAR(200),
  FOREIGN KEY(VIN) references car_jt(VIN),
  FOREIGN KEY(customer_id) references customer_jt(customer_id)
);
```
### C. Service History
```sql
create table service_history_jt(
  history_id SERIAL PRIMARY KEY,
  assigned_date DATE,
  VIN INTEGER NOT NULL,
  mechanic_id INTEGER NOT NULL,
  service_id INTEGER NOT NULL,
  FOREIGN KEY(VIN) references car_jt(VIN),
  FOREIGN KEY(mechanic_id) references mechanic_jt(mechanic_id),
  FOREIGN KEY(service_id) references service_ticket_jt(service_id)
);
```

# Inserting data into the database
## Create stored functions to insert data into newly created tables  
### Salesperson table
```sql

-- Stored function to insert data into salesperson_jt table
CREATE OR REPLACE FUNCTION add_salesperson(_salesperson_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _contact_number VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	insert into salesperson_jt(salesperson_id, first_name, last_name, contact_number)
	values(_salesperson_id, _first_name, _last_name, _contact_number);
END;
$MAIN$
LANGUAGE plpgsql;

-- call function
select add_salesperson(101, 'Jeff', 'Goldblum', '212 456 7890');

-- verify that new salesperson has been added
select *
from salesperson_jt
where salesperson_id = 101;
```
|salesperson_id|first_name|last_name|contact_number|
|--------------|----------|---------|--------------|
|101|Jeff|Goldblum|212 456 7890|

### Car table
```sql

-- Stored function to insert data into car_jt table
create or replace function add_car(_VIN INTEGER, _make VARCHAR, _model_ VARCHAR)
returns void
as $MAIN$
begin 
	insert into car_jt(VIN, make, model)
	values(_VIN, _make, _model_);
end;
$MAIN$
LANGUAGE plpgsql;

-- call function
select add_car(1000001, 'Ford', 'Fiesta');

-- verify that the car has been added to table
select *
from car_jt
where VIN = 1000001;
```
|vin|make|model|
|---|----|-----|
| 1000001 |Ford|Fiesta|

## Insert data into tables without using stored functions
### Customer table
```sql
insert into customer_jt(customer_id, first_name, last_name, contact_number)
values(101, 'Jack', 'Benny', '718 565 7889');

--Verify that the customer has been added to the table
select *
from customer_jt
where customer_id = 101;
```
|customer_id|first_name|last_name|contact_number|
|-----------|----------|---------|--------------|
|101|Jack|Benny|718 565 7889|

### Mechanic table
```
insert into mechanic_jt(mechanic_id, first_name, last_name)
values(101, 'Bill', 'Dauterive');

--Verify that the mechanic has been added to the table
select *
from mechanic_jt
where mechanic_id = 101;
```
|mechanic_id|first_name|last_name|
|-----------|----------|---------|
|101|Bill|Dauterive|
