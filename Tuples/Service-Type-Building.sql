CREATE TABLE Service-Type-Building(campus_name VARCHAR(30) NOT NULL, code CHAR(6) NOT NULL , ID INT NOT NULL, roomID INT NOT NULL, floor_num INT, type VARCHAR(30), kind VARCHAR(30), product_focus VARCHAR(30),  PRIMARY KEY(campus_name,code,ID,roomID))
INSERT INTO Service-Type-Building(campus_name,code,ID,roomID,floor_num,type,kind, product_focus) VALUES
