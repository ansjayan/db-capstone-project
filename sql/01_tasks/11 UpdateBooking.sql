use littlelemondb;
SET FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES = 0;

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
call UpdateBooking(9, "2022-12-17");
