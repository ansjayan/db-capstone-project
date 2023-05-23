use littlelemondb;

SET FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES = 0;

insert into bookings(BookingID, BookingDate, TableNumber, CustomerID)
values(1, '2022-10-10', 5, 1),
(2, '2022-11-12', 3, 3),
(3, '2022-10-11', 2, 2),
(4, '2022-10-13', 2, 1);

select * 
from bookings;

delete 
from bookings;
delete
from bookings
where BookingID is null;