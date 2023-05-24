use littlelemondb;
SET FOREIGN_KEY_CHECKS=0;

delimiter //
create procedure AddBooking(in bid int, in cuid int, in tabno int, in bodate varchar(45))
begin

insert into bookings(BookingID, CustomerID, TableNumber, BookingDate)
	values(bid, cuid, tabno, bodate);
    
select "New booking added" as Confirmation
from bookings
where BookingID = bid;    

end //

delimiter ;
call AddBooking(21002, 3, 4, "2022-12-31");
