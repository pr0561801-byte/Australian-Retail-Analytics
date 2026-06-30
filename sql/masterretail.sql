select 
s.SaleID,
s.Date,
st.State,
st.StoreName,
p.ProductName,
p.Category,
cut.CustomerName,
cut.Membership,
emp.EmployeeName,
s.Quantity,
s.Profit
from sales s
join customers cut
on s.CustomerID = cut.CustomerID
join products p 
on s.ProductID = p.ProductID
join stores st
on s.StoreID = st.StoreID
join employees emp 
on s.EmployeeID = emp.EmployeeID;