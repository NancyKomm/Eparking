drop table Parking_Slots;
drop table Reservations;
drop table Cars;
drop table Parkings;
drop table Users;


drop table if exists Parkings;
create table Parkings
(
  name varchar(30),
  region varchar(25) not null,
  number_of_slots int not null,
  start_time time not null,
  finish_time time not null,
  primary key(name)
);

drop table if exists Parking_Slots;
create table Parking_Slots
(
  slot_id int,
  parking_name varchar(30),
  primary key(slot_id, parking_name),
  foreign key(parking_name) references Parkings(name)
);

drop table if exists Users;
create table Users
(
  first_name varchar(30) not null,
  last_name varchar(20) not null,
  email varchar(320),
  username varchar(30) not null unique,
  hashed_password varchar(88) not null,
  salt varchar(44) not null,
  admin bool not null,
  cardholder_name varchar(88),
  card_number varchar(88),
  expiry_date varchar(88),
  cvv varchar(88),
  primary key(email)
);

drop table if exists Cars;
create table Cars
(
  plate_number char(7),
  username varchar(30),
  primary key(plate_number),
  foreign key(username) references Users(username) on delete cascade
);

drop table if exists Reservations;
create table Reservations
(
  parking_name varchar(30),
  parking_slot_id int,
  plate_number char(7),
  start_date date not null,
  start_time time not null,
  finish_date date not null,
  finish_time time not null,
  active bool not null,
  primary key(parking_name, parking_slot_id, plate_number, start_date, start_time),
  foreign key(parking_name) references Parkings(name),
  foreign key(plate_number) references Cars(plate_number) on delete cascade
);





