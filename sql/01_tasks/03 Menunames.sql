use littlelemondb;

select MenuName
from menu
where MenuID = any (
	select MenuID
	from orders
	where Quantity > 2);