-- CREATE DATABASE ecommerce;
show databases;
use ecommerce;
show tables;
select * FROM orders;

 -- Total Orders
 select count(*) as Total_orders from orders;

 -- Total sales
  select sum(Net_amount)as Total_Sales from orders;

-- Top Products
SELECT product,sum(net_amount) as sales 
FROM orders
GROUP BY product
ORDER BY sales desc;

-- Top Cities
SELECT city,sum(net_amount) as sales 
FROM orders
GROUP BY city
ORDER BY sales desc;

-- Monthly sales
SELECT month,sum(net_amount) as sales 
FROM orders
GROUP BY month;

-- Highest Profit Products
SELECT product,sum(profit) as profit
FROM orders
GROUP BY product
ORDER BY profit desc;

-- payment mode distribution
SELECT payment_mode,count(*) as Total_orders
FROM orders
GROUP BY payment_mode;

-- cancelled orders
SELECT * FROM orders
WHERE order_status

