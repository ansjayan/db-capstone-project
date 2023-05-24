use littlelemondb;

drop procedure if exists UpdateBooking;
delimiter //
create procedure UpdateBooking(in bid int, in bodate varchar(45))
begin

update bookings
set BookingDate = bodate
where BookingID = bid ;

select concat("Booking ", bid, " updated") as Confirmation
from bookings
where BookingID = bid;    

end //

delimiter ;
call UpdateBooking(10, "2022-12-17");
call UpdateBooking(9, "2022-01-10");

