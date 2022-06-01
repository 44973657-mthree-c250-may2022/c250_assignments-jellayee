-- Part 3: Manage the Data 
insert into guests(name, address, city, state, zip, phone) values
	('Jeryl Yap', '100D Sunflower Street', 'Singapore', 'SG', 12345, 1234567890),
    ('Mack Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', 51501, 2915530508),
    ('Bettyann Seery', '750 Wintergreen Dr.', 'Wasilla', 'AK', 99654, 4782779632),
    ('Duane Cullison', '9662 Foxrun Lane','Harlingen',	'TX', 78552, 3084940198),
	('Karie Yang',	'9378 W. Augusta Ave.',	'West Deptford', 'NJ',	08096, 2147300298),
	('Aurore Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', 	48601, 3775070974),
	('Zachery Luechtefeld', '7 Poplar Dr.',	'Arvada',	'CO', 	80003, 8144852615),
	('Jeremiah Pendergrass', '70 Oakwood St.', 	'Zion',  'IL',	60099, 2794910960),
	('Walter Holaway',	'7556 Arrowhead St', 'Cumberland' ,'RI', 02864, 4463966785),
	('Wilfred Vise', '77 West Surrey Street', 'Oswego', 'NY',	13126, 8347271001),
	('Maritza Tilton', '939 Linda Rd.',	'Burke', 'VA', 22015, 4463516860),
	('Joleen Tison',  '87 Queen St.',	'Drexel Hill', 'PA', 19026, 2318932755);

insert into room(room_number, type, amenities, ada_accessible, standard_occupancy, maximum_occupancy, base_price, extra_person) values
	(201, 'Double', 'Microwave, Jacuzzi', 0,	2,	4, 199.99, 10),
	(202, 'Double', 'Refrigerator', 1, 2, 4, 174.99, 10),
	(203, 'Double', 'Microwave, Jacuzzi', 0, 2, 4, 199.99, 10),
	(204, 'Double', 'Refrigerator', 0, 2, 4, 174.99, 10),
	(205, 'Single', 'Microwave, Refrigerator, Jacuzzi', 0, 2, 2, 174.99, NULL),
    (206, 'Single', 'Microwave, Refrigerator', 1, 2, 2, 149.99, NULL),
	(207, 'Single', 'Microwave, Refrigerator, Jacuzzi', 0, 2, 2, 174.99, NULL),
	(208, 'Single', 'Microwave, Refrigerator', 1, 2, 2, 149.99, NULL),
	(301, 'Double', 'Microwave, Jacuzzi', 0, 2, 4, 199.99, 10),
	(302, 'Double', 'Refrigerator', 1, 2, 4, 174.99, 10),
	(303, 'Double', 'Microwave, Jacuzzi', 0, 2, 4, 199.99, 10),
	(304, 'Double', 'Refrigerator', 1, 2, 4, 174.99, 10),
	(305, 'Single', 'Microwave, Refrigerator, Jacuzzi', 0,	2, 2, 174.99, NULL),
	(306, 'Single', 'Microwave, Refrigerator', 1, 2,	2,	149.99,	NULL),
	(307, 'Single', 'Microwave, Refrigerator, Jacuzzi', 0, 2, 2, 174.99, NULL),
	(308, 'Single', 'Microwave, Refrigerator', 1, 2, 2, 149.99,	NULL),
	(401, 'Suite', 'Microwave, Refrigerator, Oven', 1, 3, 8, 399.99, 20),
	(402, 'Suite', 'Microwave, Refrigerator, Oven', 1, 3, 8, 399.99, 20); 

insert into reservations(room_number, name, adults, children, start_date, end_date, total_room_cost) values
	(308, 'Mack Simmer', 1,	0,	'2023-02-02',	'2021-02-04', 299.98),
    (203, 'Bettyann Seery',	2,	1, '2023-02-05', '2023-02-10', 999.95),
	(305, 'Duane Cullison', 2, 0, '2023-02-22', '2023-02-24', 349.98),
	(201, 'Karie Yang', 2,	2,	'2023-03-06', '2023-03-07', 199.99),
	(307, 'Jeryl Yap', 1, 1, '2023-03-17', '2023-03-20', 524.97),
	(302, 'Aurore Lipton', 3, 0, '2023-03-18', '2023-03-23', 924.95),
	(202, 'Zachery Luechtefeld', 2, 2, '2023-03-29', '2023-03-31', 349.98),
	(304, 'Jeremiah Pendergrass', 2, 0,	'2023-03-31', '2023-04-05', 874.95),
	(301, 'Walter Holaway', 1, 	0, '2023-04-09', '2023-04-13', 799.96),
	(207, 'Wilfred Vise', 1, 1, '2023-04-23', '2023-04-24', 174.99),
	(401, 'Maritza Tilton', 2,	4, '2023-05-30', '2023-06-02', 1199.97),
	(206, 'Joleen Tison', 2, 0, '2023-06-10', '2023-06-14', 599.96),
	(208, 'Joleen Tison', 1, 0, '2023-06-10', '2023-06-14', 599.96),	
	(304, 'Aurore Lipton', 3, 0, '2023-06-17', '2023-06-18', 184.99),
	(205, 'Jeryl Yap', 2, 0, '2023-06-28', '2023-07-02', 699.96),
	(204, 'Walter Holaway', 3,	1, '2023-07-13', '2023-07-14', 184.99),
	(401, 'Wilfred Vise', 4, 2, '2023-07-18', '2023-07-21', 1259.97),
	(303, 'Bettyann Seery', 2,	1, '2023-07-28', '2023-07-29', 199.99),
	(305, 'Bettyann Seery', 1,	0, '2023-08-30', '2023-09-01', 349.98),
	(208, 'Mack Simmer', 2, 0, '2023-09-16', '2023-09-17', 149.99),
	(203, 'Karie Yang', 2,	2, '2023-09-13', '2023-09-15', 399.98),
	(401, 'Duane Cullison', 2,	2, '2023-11-22', '2023-11-25', 1199.97),
	(206, 'Mack Simmer', 2,	0,	'2023-11-22', '2023-11-25', 449.97),
	(301, 'Mack Simmer', 2,	2, '2023-11-22', '2023-11-25', 599.97),
	(302, 'Maritza Tilton', 2,	0,	'2023-12-24', '2023-12-28', 699.96); 
    
    -- Deleting data should start with records that reference Jeremiah Pendergrass using a foreign key and then delete the record from the guest table as the last step. The scripts should only delete records related to Jeremiah Pendergrass and his reservations.
delete from reservations
where name='Jeremiah Pendergrass'; 
    
delete from guests
where name='Jeremiah Pendergrass';