select SUM(SalesAmount) as TotalSales
from sales;

select SUM(profit) as TotalProfit
from sales;

select COUNT(*) as TotalOrders
from sales;
select * from sales;
select AVG(salesAmount) as AverageOrderValue
from sales;
/* which product category genrate the highest revenue*/
select p.Category, SUM(s.salesAmount) as TotalSales
from sales s
join products p
on s.ProductID = p.ProductID
group by p.Category
order by TotalSales desc;
/* which australian state performs best*/
select st.State,
SUM(s.salesAmount) as TotalSales
from sales s
join stores st
on s.StoreID = st.StoreID
group by st.State
order by TotalSales desc;
/* which product generate most revenue*/
select p.ProductName,
SUM(s.SalesAmount) as TotalSales
from sales s
join products p 
on s.ProductID = p.ProductID
group by p.ProductName
order by TotalSales desc;
/* how do sales change overtime */
select YEAR(Date) as SalesYear,
MONTH(Date) as SalesMonth,
SUM(SalesAmount) as TotalSales
from sales
group by YEAR(date),MONTH(date)
order by SalesYear,SalesMonth desc;