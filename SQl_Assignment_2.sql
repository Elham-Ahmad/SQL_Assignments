
-------------------------------- SQL Assignment---------------------------------

-------------------------------- Assignment - 2-----------------------------------

-- create 'product_db' databse
-- create following tables
-- categories: id (PK), title, description
-- products: id (PK), title, price, description, category (FK), company
-- orders: id (PK), total, date
-- order_details: id (PK), orderId (FK), productId (FK), quantity, price, totalPrice, discount
-- create relationship as shown in the table schema
-- add some dummy data

--------------------------------------------------------------------------------------------------

-- Queries 

-------------------- 1-> First creating a Database named 'product_db'


-- CREATE DATABASE product_db;

-------------------- 2-> switching to the created database ----------------------------------------


-- USE product_db;

---------------------3-> creating tables in database with proper data types-------------------------

----------------------- Creating Table named  'Categories'-----------------------------------------

-- CREATE TABLE categories
-- (

--     id int PRIMARY KEY IDENTITY (1,1),
--     title VARCHAR (30) not null,
--     description VARCHAR (80)

-- );

---------------------- Inserting records into categories Table-------------------------------------

-- INSERT INTO categories
    
-- (
--      title,
--      description
    
-- )

-- VALUES

--     (
--         'Men-top wear',
--         'all stuff related to men-top wear'
--     ),

--     (
--         'Women-ethnic',
--         'all stuff related to women clothing'
--     ),
--     (
--         'Men Footwear',
--         'all stuff related to men-footwear'
--     ),
--     (
--         'women-footwear',
--         'all stuff related to women-footwear'
--     ),
--     (
--         'kids',
--         'all stuff related to kids'
--     );

----------------------checking if the insertion is done correctly -------------------------------------

-- select *
-- from categories;

-------------------------------------------------------------------------------------------------------

----------------------- Creating Table named  'products'-----------------------------------------


-- CREATE TABLE products
-- (

--     id int PRIMARY KEY IDENTITY (1,1),
--     title VARCHAR (30) not null,
--     price FLOAT NOT NULL,
--     description VARCHAR (80),
--     category int,
--     company VARCHAR (30)
--     FOREIGN KEY (category) REFERENCES categories (id)
-- );


----------------------- Inserting records into products Table-----------------------------------------


-- INSERT INTO products
--     (
--     title,
--     price,
--     description,
--     category,
--     company

--     )

-- VALUES

--     (
--         'Men polo T-shirt',
--         350.0,
--         'White polo T-shirt for men',
--         1,
--         'levis'
--     ),
--     (
--         'Men casual shirt',
--         450.0,
--         'Black shirt for men',
--         1,
--         'Tommy hilfiger'
--     ),

--     (
--         'Men kurta',
--         600,
--         'Black kurta for men',
--         1,
--         'UCB'
--     ),

--     (
--         'White-top',
--         300,
--         'women white top',
--         2,
--         'pepe jeans'
--     ),
--     (
--         'black jeans',
--         900,
--         'women black jeans',
--         2,
--         'Tommy hilfiger jeans'
--     ),
--     (
--         'flip-flops',
--         400,
--         'flip-flops for men',
--         3,
--         'bata'
--     ),
--     (
--         'black shoes',
--         650,
--         'black shoes for men',
--         3,
--         'nike'
--     ),
--     (
--         'red shoes',
--         300,
--         'red shoes for kids ',
--         5,
--         'bata'
--     ),
--     (
--         'blue slippers ',
--         350,
--         'blue slippers for kids ',
--         5,
--         'bata'
--     )



----------------------checking if the insertion is done correctly -------------------------------------


-- select * from products;
-- select * from categories;

-------------------------------------------------------------------------------------------------------

----------------------- Creating Table named  'orders'-----------------------------------------


-- CREATE TABLE orders
-- (
--     id int PRIMARY KEY IDENTITY (1,1),
--     total FLOAT not null,
--     date VARCHAR (10) NOT NULL,
-- )


----------------------- Inserting records into orders Table-----------------------------------------


-- INSERT INTO orders (

--     total,
--     date

-- )

--   VALUES 
--   (
--     2,
--     '25-08-22'
--   ),

--   (
--     3,
--     '24-08-22'
--   ),

--   (
--     1,
--     '26-08-22'
--   ),

--   (
--     4,
--     '26-08-22'
--   )

----------------------checking if the insertion is done correctly -------------------------------------

-- select * from orders;

-------------------------------------------------------------------------------------------------------


----------------------- Creating Table named  'orders_details'-----------------------------------------


-- CREATE TABLE order_details 

-- (

--     id int PRIMARY KEY IDENTITY (1,1),
--     orderId int ,
--     productId int,
--     quantity int,
--     price float,
--     totalPrice float,
--     discount int,
--     FOREIGN KEY (orderId) REFERENCES orders (id),
--     FOREIGN KEY (productId) REFERENCES products (id)

-- ) 


----------------------- Inserting records into orders_details Table-----------------------------------------


-- insert into order_details (
--     orderId,
--     productId,
--     quantity,
--     price,
--     totalPrice,
--     discount
-- )
-- VALUES
-- (
--     1,
--     2,
--     2,
--     400,
--     400*2,
--     10
-- ),

-- (
--     3,
--     1,
--     3,
--     200,
--     200*3,
--     10
-- ),
-- (
--     4,
--     6,
--     2,
--     500,
--     500*2,
--     10
-- );

----------------------checking if the insertion is done correctly -------------------------------------

-- select *
-- from order_details;

-------------------------------------------------------------------------------------------------------