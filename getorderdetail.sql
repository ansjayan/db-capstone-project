use littlelemondb;

prepare GetOrderDetail from 'select OrderiD, Quantity, Cost
from orders
where CustomerID = ?';

set @id = 1;
execute GetOrderDetail using @id;

