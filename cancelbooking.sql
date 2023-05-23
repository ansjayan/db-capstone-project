use littlelemondb;

delimiter //
create procedure CancelBooking(in bookid int)
begin

delete from bookings where BookingID = bookid;
select concat("Booking ", bookid, " cancelled") as Confirmation;

end //

delimiter ;
call CancelBooking(5);

select * from bookings
