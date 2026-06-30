select * from customers;
/* Which age group spends the most money */
select c.CustomerName,
case 
when Age < 25 then 'Young'
when Age between 25 and 45 then 'Adult'
else 'Senior'
end as AgeGroup
from customers c;

/* Common Table expression */
WITH SalesSummary As
(
select StoreID,
SUM(salesAmount) as TotalSales
from sales
group by StoreID
)
select * from SalesSummary;

/* RowNumber() */

select s.ProductID,
s.SalesAmount,
ROW_NUMBER() over(order by s.SalesAmount desc) as RowNum
from sales s;
/* Ranking() */
select s.ProductID,
SUM(s.SalesAmount) as TotalSales,
RANK() over(order by SUM(s.SalesAmount) desc) as SalesRank
from sales s
group by s.ProductID;
/* DenRank() without gaps in ranking */
Select s.ProductID,
SUM(s.SalesAmount) as TotalSales,
DENSE_RANK() over(order by SUM(s.SalesAmount) desc) as DenseRank
from sales s
group by s.ProductID;
/* PARTITION */
select s.StoreID,
s.ProductID,
s.SalesAmount,
ROW_NUMBER() over(PARTITION by s.StoreID order by s.SalesAmount desc) as StoreRank
from sales s;