use littlelemondb;
SET foreign_key_checks = 0;
SET GLOBAL local_infile=1;


truncate table bookings;
truncate table customers;
truncate table menu;
truncate table menuitems;
truncate table orderdeliverystatus;
truncate table orders;
truncate table staffinformation;
