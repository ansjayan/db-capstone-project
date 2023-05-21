use littlelemondb;

create view OrdersView as
select OrderID, Quantity, Cost
from Orders
where Quantity > 2;



use littlelemondb;
select * 
from OrdersView;

use littlelemondb;
show tables
from littlelemondb;

select *
from orders