insert into parkings values ('Hyper Parking', 'Megara', 5, '09:00:00', '23:00:00');
insert into parkings values ('Park Capsule', 'Eleusis', 7, '07:00:00', '22:00:00');
insert into parkings values ('Parking Sync', 'Piraeus', 10, '01:00:00', '23:00:00');
insert into parkings values ('Parking Span', 'Piraeus', 10, '08:00:00', '20:00:00');


insert into parking_slots values(1,'Hyper Parking');
insert into parking_slots values(2,'Hyper Parking');
insert into parking_slots values(3,'Hyper Parking');
insert into parking_slots values(4,'Hyper Parking');
insert into parking_slots values(5,'Hyper Parking');

insert into parking_slots values(1,'Park Capsule');
insert into parking_slots values(2,'Park Capsule');
insert into parking_slots values(3,'Park Capsule');
insert into parking_slots values(4,'Park Capsule');
insert into parking_slots values(5,'Park Capsule');
insert into parking_slots values(6,'Park Capsule');
insert into parking_slots values(7,'Park Capsule');

insert into parking_slots values(1,'Parking Sync');
insert into parking_slots values(2,'Parking Sync');
insert into parking_slots values(3,'Parking Sync');
insert into parking_slots values(4,'Parking Sync');
insert into parking_slots values(5,'Parking Sync');
insert into parking_slots values(6,'Parking Sync');
insert into parking_slots values(7,'Parking Sync');
insert into parking_slots values(8,'Parking Sync');
insert into parking_slots values(9,'Parking Sync');
insert into parking_slots values(10,'Parking Sync');

insert into parking_slots values(1,'Parking Span');
insert into parking_slots values(2,'Parking Span');
insert into parking_slots values(3,'Parking Span');
insert into parking_slots values(4,'Parking Span');
insert into parking_slots values(5,'Parking Span');
insert into parking_slots values(6,'Parking Span');
insert into parking_slots values(7,'Parking Span');
insert into parking_slots values(8,'Parking Span');
insert into parking_slots values(9,'Parking Span');
insert into parking_slots values(10,'Parking Span');

insert into users values('Anastasia', 'Mexa','ranger.kataang@gmail.com','stacy','z/Aep9a05OJ7RAy08AxKLuR0GGr6HOkXIgGJ7RO39ARDuEP3btX64KiXXj8A3HP3gAE28TGhId3pay4kO+q0ew==',
'BZibOGtXqcQSRxDYhZouUcxSD0q33bbRCHWdmcMBzfw=',true);
insert into users values('Basia', 'Pasia','queengomez2000@gmail.com','bas','z/Aep9a05OJ7RAy08AxKLuR0GGr6HOkXIgGJ7RO39ARDuEP3btX64KiXXj8A3HP3gAE28TGhId3pay4kO+q0ew==',
'BZibOGtXqcQSRxDYhZouUcxSD0q33bbRCHWdmcMBzfw=',true);
insert into users values('Petros', 'Fatouros','petrosfatouros6@gmail.com','petros','z/Aep9a05OJ7RAy08AxKLuR0GGr6HOkXIgGJ7RO39ARDuEP3btX64KiXXj8A3HP3gAE28TGhId3pay4kO+q0ew==',
'BZibOGtXqcQSRxDYhZouUcxSD0q33bbRCHWdmcMBzfw=',false);

insert into cars values ('YTP4567','petros');
insert into cars values ('TBK987','petros');

insert into reservations values ('Parking Sync',7,'YTP4567','2021-07-23','13:00:00','2021-07-24','14:00:00',true);