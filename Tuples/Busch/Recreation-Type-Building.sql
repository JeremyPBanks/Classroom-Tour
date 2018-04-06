CREATE TABLE Recreation-Type-Building(campus_name VARCHAR(30) NOT NULL, code CHAR(6) NOT NULL , ID INT NOT NULL, roomID INT NOT NULL, floor_num INT, type VARCHAR(30), kind VARCHAR(30), room_use VARCHAR(30), PRIMARY KEY(campus_name,code,ID,roomID))
INSERT INTO Recreation-Type-Building(campus_name,code,ID,roomID,floor_num,type,kind,room_use) VALUES

('Busch','002629',23,100,1,'Health & Lifestyle','Gym','Mail Room'),
('Busch','002629',23,101,1,'Health & Lifestyle','Gym','Office'),
('Busch','002629',23,102,1,'Health & Lifestyle','Gym','Office'),
('Busch','002629',23,103,1,'Health & Lifestyle','Gym','Men Locker Room'),
('Busch','002629',23,104,1,'Health & Lifestyle','Gym','Women Locker Room'),
('Busch','002629',23,105,1,'Health & Lifestyle','Gym','Neutral Locker Room'),
('Busch','002629',23,106,1,'Health & Lifestyle','Gym','Fitness Room'),
('Busch','002629',23,107,1,'Health & Lifestyle','Gym','Weight Room'),
('Busch','002629',23,108,1,'Health & Lifestyle','Gym','Weight Room'),
('Busch','002629',23,109,1,'Health & Lifestyle','Gym','Swimming Pool'),
('Busch','002629',23,110,1,'Health & Lifestyle','Gym','Basketball Court'),
('Busch','002629',23,111,1,'Health & Lifestyle','Gym','Multi-Purpose Room'),
('Busch','002629',23,112,1,'Health & Lifestyle','Gym','Multi-Purpose Room'),
