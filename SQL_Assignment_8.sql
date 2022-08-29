-- USE sales_db;
-- SELECT * FROM salespeople;
-- SELECT * FROM customers;
-- SELECT * FROM orders;

-----------------------------------------------Assignment 8-----------------------------------------------------------

-- To solve below queries use “sales” database

--Q1) Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume
-- you do not know his customer number (cnum).

-- SELECT ORDERS.*,CUSTOMERS.cname FROM CUSTOMERS,ORDERS WHERE customers.cname = 'CISNEROS' AND CUSTOMERS.CNUM = ORDERS.CNUM;


--Q2) Write a query that produces the names and ratings of all customers who have above- average
-- orders.


-- Select max(b.cname), max(b.rating), a.cnum
-- from orders a, customers b
-- where a.cnum = b.cnum
-- group by a.cnum
-- having count(a.cnum) > ( select avg(count(cnum))
-- from orders group by cnum);



--Q3) Write a query that selects the total amount in orders for each salesperson for whom this total is
-- greater than the amount of the largest order in the table.



--Q4) Write a query that selects all customers whose ratings are equal to or greater than ANY of Serres.


-- Select cname, sname
-- from customers, salespeople
-- where rating >= any ( select rating
--  from customers
--     where snum = (select snum
-- from salespeople
-- where sname = 'Serres'))
-- and sname != 'Serres'
-- and salespeople.snum(+) = customers.snum;


--Q5) Write a query using ANY or ALL that will find all salespeople who have no customers located in
-- their city.

-- SELECT *
-- FROM salespeople 
-- WHERE city !=ANY
--     (SELECT city
--      FROM customers);


-- Q6)Write a query that selects all orders for amounts greater than any for the customers in London.

-- SELECT *
-- FROM orders
-- WHERE amt < 
--    (SELECT MAX (amt)
-- 	FROM orders a, customers b
-- 	WHERE  a.cnum=b.cnum
-- 	AND b.city='London');


--Q7) Extract all the orders of Motika.

-- SELECT * FROM ORDERS,SALESPEOPLE WHERE sname ='MOTIKA' AND  ORDERS.SNUM = SALESPEOPLE.snum;

-- SELECT ONUM FROM ORDERS WHERE  SNUM = (
--     SELECT SNUM FROM salespeople WHERE SNAME = 'MOTIKA'
-- );


--Q8) Find all the order attribute to salespeople servicing customers in London.

-- SELECT *
-- FROM orders
-- WHERE snum IN
--     (SELECT snum 
--      FROM salespeople 
--      WHERE city='London');


--Q9) Find names and numbers of all salesperson who have more than one customers.

-- SELECT salespeople.sname,salespeople.snum FROM SALESPEOPLE WHERE 1 < (SELECT COUNT(*) FROM customers WHERE snum = salespeople.snum );


--Q10) Find salespeople number,name and city who have multiple customers.


-- SELECT * FROM salespeople WHERE SNUM IN (
--     SELECT DISTINCT SNUM FROM CUSTOMERS CUS1 WHERE EXISTS (
--         SELECT * FROM CUSTOMERS CUS2 WHERE CUS2.snum = CUS1.snum AND CUS2.cname<>CUS1.cname
--     )
-- )


--Q11) Select customers who have a greater rating than any other customer in Rome.

--  select * from customers where rating>(select max(rating) from customers where city='Rome');



--Q12) Select all orders that had amounts that were greater that at least one of the orders from ‘1990-10-
-- 04’ .

-- SELECT *
-- FROM Orders
-- WHERE amt > ANY
--    (SELECT amt
-- 	FROM orders
-- 	WHERE  odate='1990/10/04');



--Q13)  Find all orders with amounts smaller than any amount for a customer in San Jose.

--        SELECT *
-- FROM orders
-- WHERE amt < ANY
--    (SELECT amt
-- 	FROM orders a, customers b
-- 	WHERE  a.cnum=b.cnum
-- 	AND b.city='SAN JOSE');


--Q14)  Select those customers whose rating are higher than every customers in Paris.
        
        -- SELECT * FROM CUSTOMERS WHERE RATING > ALL (
        --     SELECT RATING FROM CUSTOMERS WHERE CITY = 'PARIS'
        -- );
