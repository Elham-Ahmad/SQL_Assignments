-------------------------------- SQL Assignment---------------------------------

-------------------------------- Assignment 1-----------------------------------

-- create 'student_db' database
-- create following tables in database with proper data types
-- student: id (PK), name, address, phone, email, age, schoolId (FK)
-- school: id (PK), name, address, principal, phone
-- create relationship as shown in the table schema
-- add some dummy data

--------------------------------------------------------------------------------------------------

-- Queries 

-------------------- 1-> First creating a Database named 'student_db'

-- CREATE DATABASE student_db;

-------------------- 2-> switching to the created database ----------------------------------------

-- USE student_db;

---------------------3-> creating tables in database with proper data types-------------------------

-- note -> first we have to create school table because student table is referencing to the school table 

-- CREATE TABLE school
 
--(

--     id int PRIMARY KEY IDENTITY (1,1),

--     name VARCHAR(80) not null,

--     address VARCHAR (80) not null,

--     principal VARCHAR (30) not null,

--     phone CHAR(10) CONSTRAINT chk_phone CHECK (phone not like '%[^0-9]%')

-- );

----------------------------- 4-> adding dummy data in the school table --------------------------

-- INSERT into school
--     (
--          name,
--          address,
--          principal,
--          phone
--     )
--     
--     VALUES
--
--    (
--          'Miss Hill Higher secondary school',
--          'LaxmiBai colony Gwalior (M.P)',
--          'Mr R.P Singh',
--          '976954556'
--    ),

--     (
--          'Gwalior Glory Higher Secondary school',
--          'shivpuri link road Gwalior (M.P)',
--          'Mrs shweta saxena',
--          '9769654557'
--     ),

--     (
--         'Little angles Higher Secondary school',
--         'shivpuri link road Gwalior (M.P)',
--         'Mrs Tina olivera',
--         '9769654558'
--     ),

--     (
--         'delhi public school',
--         'Morar road Gwalior (M.P)',
--         'Mr ankit Ujjawal',
--         '9769654559'
--     );


------------------------------To see the table & table Contents-----------------------------

-- select *
-- from school ;

-------------------------------------------------------------------------------------------



----------------------------- 5-> Creating Student Table-----------------------------------

-- CREATE TABLE student

-- (

--     id int PRIMARY KEY IDENTITY (1,1),

--     name VARCHAR(20) not null,

--     address VARCHAR (80),

--     phone CHAR(10) CONSTRAINT chk_phone_stud CHECK (phone not like '%[^0-9]%') ,

--     email VARCHAR (30) not null UNIQUE,

--     age int CHECK (age>=18),

--     schoolId int ,

--     FOREIGN KEY (schoolId) REFERENCES school(id)

-- );


----------------------- 5-> Inserting dummy data in Student Table -------------------

-- INSERT INTO student (

--     name, 
--     address,
--     phone,
--     email,
--     age,
--     schoolId
-- )

--     VALUES

--     (
--         'Elham Ahmad',
--         'mhatre bridge,Pune',
--         '8871299731',
--         'ahmedelham@gmail.com',
--         23,
--         1
--     ),
--     (

--         'Rishab narayan',
--         'Sindhi colony,Gwalior',
--         '8871299721',
--         'rishi@gmail.com',
--         22,
--         2
--     ),

--     (

--         'nikhil thakur',
--         'new high court road,Gwalior',
--         '8871299765',
--         'thakurnikhil@gmail.com',
--         23,
--         3
--     ),
--     (
--         'Arpit Singhal',
--         'karve nagar,Pune',
--         '8871499731',
--         'arpit@gmail.com',
--         23,
--         4
--     )


-----------------------------To see the table & table Contents--------------------------
 
-- select *
-- from student;

---------------------------------------------------------------------------------------


