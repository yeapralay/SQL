-- start
-- Author: Pralay
CREATE DATABASE IF NOT EXISTS interview_db;

USE interview_db;

-- for creation of table
CREATE TABLE "sqlPrac" ("serial_no" "int",
                        "desc" "varchar[10]",
                        "remarks" "boolean");


-- only copy the structure of the Orders table
create table Orders_cpy as select * from Orders where 1=2;

-- 1=2 refers to a condition that is always false, ensuring no data is copied.

-- create a table with the same structure & data as Customers
create table subscriber as select * from Customers;

-- select maximum amount from Orders;
select max(amount) from Orders;

-- select two values from 2nd lowest amount from Orders table;
select item,amount from Orders ORDER BY amount asc limit 1,2;

-- select two values from highest amount from Orders table;
select item,amount from Orders ORDER BY amount desc limit 2 offset 0;