use littlelemondb;
SET foreign_key_checks = 0;


insert into `menuitems` (`ItemID`, `StarterName`, `CourseName`, `Sides`, `DesertName`, `Drink`) 
values('1', 'Falafel', 'Greek salad', 'Tapas', 'Greek yoghurt', 'Athens White wine'),
	('2', 'Falafel', 'Kabasa', 'Meatballs', 'Turkish yoghurt', 'Ankara White Wine'),
	('3', 'Falafel', 'Pizza', 'Bruschetta', 'Cheesecake', 'Italian Coffee'),
	('4', 'Flatbread', 'Greek salad', 'Tapas', 'Greek yoghurt', 'Athens White wine'),
	('5', 'Flatbread', 'Kabasa', 'Meatballs', 'Turkish yoghurt', 'Ankara White Wine'),
	('6', 'Flatbread', 'Pizza', 'Bruschetta', 'Cheesecake', 'Italian Coffee'),
	('7', 'Hummus', 'Greek salad', 'Tapas', 'Greek yoghurt', 'Athens White wine'),
	('8', 'Hummus', 'Kabasa', 'Meatballs', 'Turkish yoghurt', 'Ankara White Wine'),
	('9', 'Hummus', 'Pizza', 'Bruschetta', 'Cheesecake', 'Italian Coffee'),
	('10', 'Minestrone', 'Greek salad', 'Tapas', 'Greek yoghurt', 'Athens White wine'),
	('11', 'Minestrone', 'Kabasa', 'Meatballs', 'Turkish yoghurt', 'Ankara White Wine'),
	('12', 'Minestrone', 'Pizza', 'Bruschetta', 'Cheesecake', 'Italian Coffee'),
	('13', 'Olives', 'Greek salad', 'Tapas', 'Greek yoghurt', 'Athens White wine'),
	('14', 'Olives', 'Kabasa', 'Meatballs', 'Turkish yoghurt', 'Ankara White Wine'),
	('15', 'Olives', 'Pizza', 'Bruschetta', 'Cheesecake', 'Italian Coffee'),
	('16', 'Tomato bread', 'Greek salad', 'Tapas', 'Greek yoghurt', 'Athens White wine'),
	('17', 'Tomato bread', 'Kabasa', 'Meatballs', 'Turkish yoghurt', 'Ankara White Wine'),
	('18', 'Tomato bread', 'Pizza', 'Bruschetta', 'Cheesecake', 'Italian Coffee'),
	('19', 'Falafel', 'Bean soup', 'Potato salad', 'Ice cream', 'Corfu Red Wine'),
	('20', 'Falafel', 'Carbonara', 'Focaccia', 'Affogato', 'Roma Red wine'),
	('21', 'Falafel', 'Shwarma', 'Fries', 'Baklava', 'Turkish Coffee'),
	('22', 'Flatbread', 'Bean soup', 'Potato salad', 'Ice cream', 'Corfu Red Wine'),
	('23', 'Flatbread', 'Carbonara', 'Focaccia', 'Affogato', 'Roma Red wine'),
	('24', 'Flatbread', 'Shwarma', 'Fries', 'Baklava', 'Turkish Coffee'),
	('25', 'Hummus', 'Bean soup', 'Potato salad', 'Ice cream', 'Corfu Red Wine'),
	('26', 'Hummus', 'Carbonara', 'Focaccia', 'Affogato', 'Roma Red wine'),
	('27', 'Hummus', 'Shwarma', 'Fries', 'Baklava', 'Turkish Coffee'),
	('28', 'Minestrone', 'Bean soup', 'Potato salad', 'Ice cream', 'Corfu Red Wine'),
	('29', 'Minestrone', 'Carbonara', 'Focaccia', 'Affogato', 'Roma Red wine'),
	('30', 'Minestrone', 'Shwarma', 'Fries', 'Baklava', 'Turkish Coffee'),
	('31', 'Olives', 'Bean soup', 'Potato salad', 'Ice cream', 'Corfu Red Wine'),
	('32', 'Olives', 'Carbonara', 'Focaccia', 'Affogato', 'Roma Red wine'),
	('33', 'Olives', 'Shwarma', 'Fries', 'Baklava', 'Turkish Coffee'),
	('34', 'Tomato bread', 'Bean soup', 'Potato salad', 'Ice cream', 'Corfu Red Wine'),
	('35', 'Tomato bread', 'Carbonara', 'Focaccia', 'Affogato', 'Roma Red wine'),
	('36', 'Tomato bread', 'Shwarma', 'Fries', 'Baklava', 'Turkish Coffee');

select * from menuitems;

