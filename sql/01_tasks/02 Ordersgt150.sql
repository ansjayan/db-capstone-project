use littlelemondb;

select c.CustomerID, c.FullName, o.OrderID, o.Cost, m.MenuName, mi.CourseName
from orders as o
left join menu as m
on o.MenuID = m.MenuID
left join menuitems as mi
on m.ItemID = mi.ItemID
left join customers as c
on o.CustomerID = c.CustomerID
where o.Cost > 150
order by o.Cost asc