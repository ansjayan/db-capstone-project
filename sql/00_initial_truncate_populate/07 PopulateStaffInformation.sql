use littlelemondb;
SET foreign_key_checks = 0;


insert into `staffinformation` (`StaffID`, `AddressID`, `StaffName`, `Role`, `Email`, `Salary`, `ContactNumber`) 
values('1', '980', 'Laney Fadden', 'General Manager', 'laney.fadden@yahoo.com', '75000', '7151259193'),
	('2', '981', 'Giacopo Bramich', 'Assistant Manager', 'giacopo.bramich@yahoo.com', '40000', '4529581905'),
	('3', '982', 'Lia Bonar', 'Executive Chef', 'lia.bonar@yahoo.com', '50000', '4082669678'),
	('4', '983', 'Merrill Baudon', 'Sous chef', 'merrill.baudon@yahoo.com', '40000', '1477803698'),
	('5', '984', 'Tasia Fautly', 'Pastry Chef', 'tasia.fautly@yahoo.com', '35000', '8639077214'),
	('6', '985', 'Angel Veschambre', 'Kitchen Manager', 'angel.veschambre@yahoo.com', '30000', '8234644360'),
	('7', '986', 'Sheilah Maestro', 'Food & Beverages Manager', 'sheilah.maestro@yahoo.com', '30000', '1300510239'),
	('8', '987', 'Audie Willcocks', 'Line Cook', 'audie.willcocks@yahoo.com', '15000', '8486615320'),
	('9', '988', 'Mart Malsher', 'Fast Food Cook', 'mart.malsher@yahoo.com', '12000', '8455125855'),
	('10', '989', 'Magdalen Lacheze', 'Short Order Cook', 'magdalen.lacheze@yahoo.com', '16000', '3070704902'),
	('11', '990', 'Margarita Mancktelow', 'Prep Cook', 'margarita.mancktelow@yahoo.com', '15000', '8937341837'),
	('12', '991', 'Ashil Brogini', 'Sommelier', 'ashil.brogini@yahoo.com', '30000', '2886779309'),
	('13', '992', 'Arthur Mathewson', 'Server', 'arthur.mathewson@yahoo.com', '12000', '7975918461'),
	('14', '993', 'Ennis Dungate', 'Runner', 'ennis.dungate@yahoo.com', '15000', '9081670817'),
	('15', '994', 'Tiffani Halstead', 'Busser', 'tiffani.halstead@yahoo.com', '10000', '7523733384'),
	('16', '995', 'Roddie Winterbotham', 'Host', 'roddie.winterbotham@yahoo.com', '12000', '8411911113'),
	('17', '996', 'Pincas Stearn', 'Bartender', 'pincas.stearn@yahoo.com', '10000', '9636553989'),
	('18', '997', 'Tony Crabtree', 'Barback', 'tony.crabtree@yahoo.com', '10000', '1647086542'),
	('19', '998', 'Tamarah Filasov', 'Barista', 'tamarah.filasov@yahoo.com', '12000', '8398278891'),
	('20', '999', 'Pen Pruce', 'Drive-thru Operator', 'pen.pruce@yahoo.com', '10000', '7511171506'),
	('21', '1000', 'Boot Burree', 'Cashier', 'boot.burree@yahoo.com', '10000', '1432886344'),
	('22', '1001', 'Sabra Calbreath', 'Dishwasher', 'sabra.calbreath@yahoo.com', '8000', '8400241430'),
	('23', '1002', 'Obidiah Zanicchi', 'Cook', 'obidiah.zanicchi@yahoo.com', '12000', '9322533781'),
	('24', '1003', 'Anders Stowe', 'Cook', 'anders.stowe@yahoo.com', '12000', '6934011544'),
	('25', '1004', 'Locke Janaway', 'Server', 'locke.janaway@yahoo.com', '12000', '6132885973'),
	('26', '1005', 'Kaylyn Colebourne', 'Server', 'kaylyn.colebourne@yahoo.com', '12000', '5609939034'),
	('27', '1006', 'Noni Quickenden', 'Busser', 'noni.quickenden@yahoo.com', '10000', '4938017613'),
	('28', '1007', 'Alan Paskell', 'Dishwasher', 'alan.paskell@yahoo.com', '8000', '9366136701'),
	('29', '1008', 'Anny Pattemore', 'Server', 'anny.pattemore@yahoo.com', '12000', '9939916191'),
	('30', '1009', 'Les Harmson', 'Barista', 'les.harmson@yahoo.com', '12000', '4027438544');


select * from staffinformation;

