-- Part 4: Query the Database 
-- 1) Return a list of reservations that end in July 2023 
select name, room_number, start_date, end_date
from reservations
where end_date < '2023-08-01';
    
-- 2) Return a list of reservations for rooms with jacuzzi
select distinct name, a.room_number, start_date, (adults + children) AS total_guests, amenities
from reservations a
join room b
	on a.room_number = b.room_number
where b.amenities like '%Jacuzzi%'; 

-- 3) Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
select a.name, room_number, start_date, (adults+children) AS total_guest
from reservations a
join guests b
 on a.name = b.name
WHERE a.name='Karie Yang';

-- 4) Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.
select room_number, total_room_cost, count(room_number), (total_room_cost/count(room_number)) AS per_room_cost
from reservations 
group by room_number;

-- 5) Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023.
select *
from reservations 
where (adults+children) >= 3 AND (start_date between '2023-04-01' AND '2023-05-01');

-- 6) Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last nam
select name, substring_index(name, " ", -1) AS last_name, count(*) AS number_of_reservations
from reservations
group by name
order by count(*) DESC, substring_index(name, " ", -1) ; 

-- 7) Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)
select name, address, phone
from guests
where phone ="2915530508";
