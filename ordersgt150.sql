use littlelemondb;

select c.CustomerID, c.FullName, o.OrderID, o.Cost, m.MenuName, mi.CourseName
from orders as o
inner join customers as c
on o.CustomerID = c.CustomerID
inner join menu as m
on o.MenuID = m.MenuID
inner join menuitems as mi
on m.ItemID = mi.ItemID
where o.Cost > 150
order by o.Cost asc