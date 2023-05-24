use littlelemondb;

drop procedure if exists CancelOrder;
delimiter //
create procedure CancelOrder(in orid int)
begin 
delete from orders where OrderID = orid;
select concat('Order ', orid, ' is cancelled') as Confirmation;
end //

delimiter ;
call CancelOrder(99)