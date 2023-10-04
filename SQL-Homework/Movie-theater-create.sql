-- Movies Table Creation
CREATE TABLE MOVIES(
  movie_id SERIAL PRIMARY KEY,
  movie_title VARCHAR(150),
  movie_length INTEGER
);

-- Customers Table Creation
CREATE TABLE CUSTOMERS(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

-- Concessions Table Creation
CREATE TABLE CONCESSIONS(
  upc SERIAL PRIMARY KEY,
  inventory_amount INTEGER
);

-- Vendor Table Creation
CREATE TABLE VENDORS(
  vendor_id SERIAL PRIMARY KEY,
  vendor_name VARCHAR(100),
  contact_num VARCHAR(20)
);

-- Ticket Table Creation
CREATE TABLE TICKETS(
  ticket_id SERIAL PRIMARY KEY,
  ticket_cost NUMERIC(3,2),
  customer_id INTEGER NOT NULL,
  movie_id INTEGER NOT NULL,
  FOREIGN KEY(customer_id) REFERENCES CUSTOMERS(customer_id),
  FOREIGN KEY(movie_id) REFERENCES MOVIES(movie_id)
);

-- Concession Orders Table Creation
CREATE TABLE ORDERS(
  order_id SERIAL PRIMARY KEY,
  order_cost NUMERIC(8,2),
  customer_id INTEGER NOT NULL,
  upc INTEGER NOT NULL,
  FOREIGN KEY(customer_id) REFERENCES CUSTOMERS(customer_id),
  FOREIGN KEY(upc) REFERENCES CONCESSIONS(upc)
);

CREATE TABLE PRODUCTS(
  product_id SERIAL PRIMARY KEY,
  price NUMERIC(3,2),
  product_name VARCHAR(150),
  upc INTEGER NOT NULL,
  vendor_id INTEGER NOT NULL,
  FOREIGN KEY(upc) REFERENCES CONCESSIONS(upc),
  FOREIGN KEY(vendor_id) REFERENCES VENDOR(vendor_id)
);
