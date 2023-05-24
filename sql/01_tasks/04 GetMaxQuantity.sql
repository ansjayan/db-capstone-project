use littlelemondb;

drop procedure if exists GetMaxQuantity;
create procedure GetMaxQuantity()  
select max(Quantity) as 'Max Quantity in Order'
from orders;

call GetMaxQuantity();
