use littlelemondb;

select c.FullName, c.Email, c.ContactNumber, a.City, a.PostalCode, a.Country , o.Cost
from orders as o
inner join customers as c
on o.CustomerID = c.CustomerID
inner join address as a
on c.AddressID = a.AddressID
where o.Cost > 60


