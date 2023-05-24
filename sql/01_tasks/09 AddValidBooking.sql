use littlelemondb;
SET FOREIGN_KEY_CHECKS=0;
delimiter //

create procedure AddValidBooking(in booking_date varchar(45), in table_no int, in customer_id int)
begin	
    start transaction;
    
		set @bookingid = (select BookingID
							from bookings 
							where BookingDate = booking_date and TableNumber = table_no);
		set @nextbid = (select max(BookingID) + 1 from bookings);
		insert into bookings(BookingID, CustomerID, TableNumber, BookingDate)
			values(@nextbid, customer_id, table_no, booking_date);
	
	if	@bookingid
	then
        select concat("Table ", table_no, " is already booked, Booking cancelled") as BookingStatus;
		rollback;
    else 
		select concat("Table ", table_no, " is booked") as BookingStatus;
		commit;
	end if;
end //
    
delimiter ;

call AddValidBooking("2022-10-13", 2, 1);
call AddValidBooking("2022-10-15", 15, 2);

-- select * from bookings;

-- set @booking_date = "2022-10-13";
-- set @table_no = 2;
-- (select BookingID
-- 		from bookings 
-- 		where BookingDate = @booking_date and TableNumber = @table_no);
--         
-- set @nextbid = (select max(BookingID) + 1 from bookings);        
-- select @nextbid