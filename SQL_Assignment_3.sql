

------------------------------------ Assignment-3--------------------------------------------------

-- solve following queries using sales database


--Q1) Write a query that produces all rows from the Customers table for which the salesperson’s number
--    is 1001

-- select * from customers where snum = 1001;



--Q2) Write a select command that produces the rating followed by the name of each customer in San
-- Jose

--  select rating,cname from customers where city = 'san jose';



-- Q3)Write a query that will produce the snum values of all salespeople from the Orders table (with the
-- duplicate values suppressed)

-- select Distinct snum from orders;



-- Q4)Write a query that will give you all orders for more than Rs. 1,000
-- 

-- select amt from orders where amt > 1000;


-- Q5)Write a query that will give you the names and cities of all salespeople in London with a
-- commission above 0.10

-- select sname,city from salespeople where city = 'london' and comm > 0.10;



-- Q6)Write a query on the Customers table whose output will exclude all customers with a rating <=
-- 100, unless they are located in Rome

-- select * from customers where rating > 100 or city ='rome';




-- Q7)What will be the output from the following query? Select * from Orders
-- where (amt < 1000 OR
-- NOT (odate = ‘1990-10-03’
-- AND cnum > 2003));

-- select * from orders where (amt < 1000 or Not (odate = '1990-10-03' and cnum >2003));
-- This query will return all the records from orders table where amount is greater or less than 1000 with cnum greater or less than 2003.


-- Q8)What will be the output of the following query?

-- Select * from orders
-- where NOT ((odate = '1990-10-03' OR snum >1006) AND amt >= 1500);

-- this will return all records which are opposite to the given condition

-- Q9)Write a query that selects all orders except those with zeroes or NULLs in the amt field.

-- select * from orders where amt != 0 or amt != null; 