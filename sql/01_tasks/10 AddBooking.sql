use littlelemondb;

drop procedure if exists AddBooking;
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
call AddBooking(21001, 3, 4, "2022-12-31");
call AddBooking(99999, 99, 99, "2022-12-04");

