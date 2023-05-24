use littlelemondb;

drop procedure if exists CheckBooking;
delimiter //
create procedure CheckBooking(in bookdate varchar(45), in tableno int)
begin

select concat('Table ', tablenumber, ' is already booked.') as BookingStatus
from bookings
where (BookingDate = bookdate and TableNumber = tableno);
-- group by BookingDate, TableNumber
-- having (BookingDate = bookdate and TableNumber = tableno);

end //

delimiter ;
call CheckBooking("2022-04-08", 11);

-- select * from bookings;
