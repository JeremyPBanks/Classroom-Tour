CREATE TABLE Service-Type-Building(campus_name VARCHAR(30) NOT NULL, code CHAR(6) NOT NULL , ID INT NOT NULL, roomID INT NOT NULL, floor_num INT, type VARCHAR(30), kind VARCHAR(30), product_focus VARCHAR(30),  PRIMARY KEY(campus_name,code,ID,roomID))
INSERT INTO Service-Type-Building(campus_name,code,ID,roomID,floor_num,type,kind,room_use VARCHAR(30), product_focus) VALUES

('Main','789123',2,101,1,'Help and Information','Student Center','Student Lounge',),
('Main','789123',2,102,1,'Help and Information','Student Center','Office',),
('Main','789123',2,103,1,'Help and Information','Student Center','Help Desk',),
('Main','789123',2,104,1,'Help and Information','Student Center','Study Room',),
('Main','789123',2,105,1,'Help and Information','Student Center','Student Lounge',),
('Main','789123',2,201,1,'Help and Information','Student Center','Student Lounge',),
('Main','789123',2,202,1,'Help and Information','Student Center','Computer Lab',),
('Main','789123',2,203,1,'Help and Information','Student Center','Study Room',),
('Main','789123',2,204,1,'Help and Information','Student Center','Study Room',),
('Main','789123',2,205,1,'Help and Information','Student Center','Study Room',),
