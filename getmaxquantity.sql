use littlelemondb;

create procedure GetMaxQuantity()  
select max(Quantity) as 'Max Quantity in Order'
from orders;

call GetMaxQuantity();
