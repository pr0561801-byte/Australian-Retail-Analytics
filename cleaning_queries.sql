USE AustralianRetail;
select top 10 * from customers;

select COUNT(*) AS Customers
from customers;

select COUNT(*) as products
from products;

select COUNT(*) as stores
from stores;

select COUNT(*) as employees
from employees;
select COUNT(*) as Targets
from Targets;
SELECT COUNT(*) AS Sales
FROM Sales;

SELECT TOP 10 *
FROM Customers;
SELECT TOP 10 *
FROM Products;
SELECT TOP 10 *
FROM Sales;

select CustomerID, COUNT(*) as total 
from customers
group by CustomerID
having COUNT(*) >1;

select * from sales 
where SalesAmount is null;

select * from sales 
where Profit is null;

select * from sales
where Profit < 0;

select CustomerID,
COUNT(*) as total
from customers
group by CustomerID
having COUNT(*) >1;

SELECT *
FROM Sales
WHERE SalesAmount < 0;

select 
SUM(salesAmount) as TotalSales
from sales;

select 
sum(profit) as TotalProfit
from sales;

select st.State,
sum(s.salesAmount) as Totalsales
from sales s
join stores st
on s.StoreID = st.StoreID
group by st.State
order by Totalsales desc;