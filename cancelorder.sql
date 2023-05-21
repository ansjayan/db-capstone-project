SET SQL_SAFE_UPDATES = 0;

use littlelemondb;

delimiter //
create procedure CancelOrder(in orderid int)
begin 
delete from orders where OrderID = orderid;
delete from orderdeliverystatus where OrderID = orderid;
select concat('Order ', orderid, ' is cancelled') as Confirmation;
end //

delimiter ;
call CancelOrder(5)