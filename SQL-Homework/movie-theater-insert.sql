-- Insert into Movies Table
Insert into MOVIES(
    movie_id,
    movie_title,
    movie_length
)VALUES(
    1,
    'A Fish Named Wilma',
    90
);

-- Insert into Customers Table
Insert into CUSTOMERS(
    customer_id,
    first_name,
    last_name
)VALUES(
    1,
    'John',
    'Brown'
);

-- Insert into Concessions Table
Insert into CONCESSIONS(
    upc,
    inventory_amount,
)VALUES(
    111,
    30
);

-- Insert into Vendors Table
Insert into VENDORS(
    vendor_id,
    vendor_name,
    contact_num
)VALUES(
    1,
    'Smithy and Son',
    '800-888-8888'
);

-- Insert into Tickets Table
Insert into TICKETS(
    ticket_id,
    ticket_cost,
    customer_id,
    movie_id
)VALUES(
    1,
    8.00,
    1,
    1
);

-- Insert into Concession Orders Table
Insert into ORDERS(
    order_id,
    order_cost,
    customer_id,
    upc
)VALUES(
    1,
    27.75,
    1,
    111
);

-- Insert into Products Table
Insert into PRODUCTS(
    product_id,
    price,
    product_name,
    upc,
    vendor_id
)VALUES(
    1,
    4.30,
    'Gummy Worms',
    111,
    1
);















