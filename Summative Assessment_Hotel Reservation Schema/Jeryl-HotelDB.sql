create database hotel_reservation_schema;
use hotel_reservation_schema;
drop table if exists hotel_reservation; 

create table if not exists room(
	room_number int primary key NOT NULL, 
    type varchar(50) NOT NULL,
    amenities varchar(200) NOT NULL,
    ada_accessible char(10) NOT NULL,
    standard_occupancy int NOT NULL,
    maximum_occupancy int NOT NULL,
    base_price int NOT NULL,
    extra_person int
); 

alter table room 	
	add amenities varchar(200) NOT NULL;
	

create table if not exists guests(
	name varchar(200) primary key NOT NULL,
    address varchar(200) NOT NULL,
    city varchar(200) NOT NULL,
    state char(10) NOT NULL,
    zip bigint NOT NULL,
    phone bigint NOT NULL
); 

create table if not exists reservations(
    adults int NOT NULL,
    children int NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    total_room_cost bigint NOT NULL
); 

alter table reservations
	add name varchar(200) NOT NULL,
    add room_number int NOT NULL;
    
alter table reservations
	add constraint fk_reservations_guests foreign key (name) references guests(name),
	add constraint fk_reservations_room foreign key (room_number) references room(room_number);