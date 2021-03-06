CREATE TABLE Residential-Type-Building(campus_name VARCHAR(30) NOT NULL, code CHAR(6) NOT NULL, ID INT NOT NULL, roomID INT NOT NULL, floor_num INT, type VARCHAR(30), AC-Heating VARCHAR(3), Has-Lounge VARCHAR(3), Has-Lobby VARCHAR(30), is_CoEd VARCHAR(3), floor_type VARCHAR(30), Has-Kitchen VARCHAR(30), num_bathrooms INT, Has-Communal-Bathroom VARCHAR(3),vacancy_count INT, PRIMARY KEY(campus_name,code,ID,roomID))
INSERT INTO Residential-Type-Building(campus_name,code,ID,roomID,floor_num,type,AC-Heating,Has-Lounge,Has-Lobby,is_CoEd,floor_type,Has-Kitchen,num_bathrooms,Has-Communal-Bathroom,vacancy_count) VALUES

('Busch','002629',20,100,1,'Mail Room',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('Busch','002629',20,101,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,102,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,103,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,104,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,105,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,106,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,107,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,108,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,109,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,110,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,111,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,112,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,113,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,114,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,3),
('Busch','002629',20,115,1,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,201,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,202,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,203,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,204,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,205,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,206,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,207,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,208,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,209,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,210,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,211,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,212,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,213,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,214,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,3),
('Busch','002629',20,215,2,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,301,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,302,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,303,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,304,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,305,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,2),
('Busch','002629',20,306,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,307,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,308,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,309,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,310,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,311,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,312,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,313,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,314,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,315,3,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,401,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,402,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,403,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,2),
('Busch','002629',20,404,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,3),
('Busch','002629',20,405,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,406,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,407,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,408,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,409,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,410,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,411,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),
('Busch','002629',20,412,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,413,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,414,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,0),
('Busch','002629',20,415,4,'Apartment','Yes','Yes','Yes','Yes','Carpet','Yes',1,NULL,1),

('Busch','002629',17,100,1,'Mail Room',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('Busch','002629',17,101,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,1),
('Busch','002629',17,102,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,103,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,1),
('Busch','002629',17,104,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,2),
('Busch','002629',17,105,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,1),
('Busch','002629',17,106,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,1),
('Busch','002629',17,107,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,1),
('Busch','002629',17,108,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,109,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,2),
('Busch','002629',17,110,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,111,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,112,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,1),
('Busch','002629',17,113,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,114,1,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,1),
('Busch','002629',17,201,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,2),
('Busch','002629',17,202,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,203,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,204,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,205,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,206,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,1),
('Busch','002629',17,207,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,1),
('Busch','002629',17,208,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,2),
('Busch','002629',17,209,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,2),
('Busch','002629',17,210,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,2),
('Busch','002629',17,211,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,2),
('Busch','002629',17,212,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,2),
('Busch','002629',17,213,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),
('Busch','002629',17,214,2,'Apartment','No','Yes','No','No','Concrete','Yes',1,NULL,0),

('Busch','002629',16,100,1,'Mail Room',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('Busch','002629',16,101,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,102,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,103,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,104,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,105,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,106,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,107,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,108,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,109,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,110,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,111,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',2),
('Busch','002629',16,112,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,113,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,114,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,115,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,116,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,201,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,202,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,203,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,204,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,205,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',2),
('Busch','002629',16,206,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,207,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,208,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,209,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',2),
('Busch','002629',16,210,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',16,211,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,212,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,213,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',2),
('Busch','002629',16,214,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,215,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',16,216,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),

('Busch','002629',15,100,1,'Mail Room',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('Busch','002629',15,101,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,102,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,103,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,3),
('Busch','002629',15,104,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,105,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,106,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,107,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,108,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,109,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,110,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,111,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,112,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,113,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,114,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,2),
('Busch','002629',15,115,1,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,201,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,202,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,203,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,204,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,205,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,206,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,207,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,208,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,209,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),
('Busch','002629',15,210,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,211,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,212,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,213,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,214,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,1),
('Busch','002629',15,215,2,'Apartment','Yes','No','Yes','Yes','Concrete','Yes',1,NULL,0),


('Busch','002629',5,100,1,'Mail Room',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('Busch','002629',5,101,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,102,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,103,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,104,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,105,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,106,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,107,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,108,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,109,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,110,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,111,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,112,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,113,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,3),
('Busch','002629',5,114,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,115,1,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,201,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,202,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,203,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,3),
('Busch','002629',5,204,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,205,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,206,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,207,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,2),
('Busch','002629',5,208,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,209,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,210,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,211,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,212,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,213,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,2),
('Busch','002629',5,214,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,215,2,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,3),
('Busch','002629',5,301,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,2),
('Busch','002629',5,302,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,2),
('Busch','002629',5,303,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,304,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,305,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,306,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,307,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,308,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,309,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,310,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,311,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,1),
('Busch','002629',5,312,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,313,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,2),
('Busch','002629',5,314,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),
('Busch','002629',5,315,3,'Apartment','No','No','Yes','Yes','Carpet','Yes',2,NULL,0),


('Busch','002629',3,100,1,'Mail Room',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('Busch','002629',3,101,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,102,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,103,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,104,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,105,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',4),
('Busch','002629',3,106,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,107,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,108,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',3),
('Busch','002629',3,109,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,110,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,111,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,112,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,113,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,114,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,115,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,116,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,117,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,118,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,119,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',2),
('Busch','002629',3,120,1,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,201,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,202,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,203,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,204,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,205,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',2),
('Busch','002629',3,206,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,207,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,208,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',2),
('Busch','002629',3,209,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,210,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,211,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',4),
('Busch','002629',3,212,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,213,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,214,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,215,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,216,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,217,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,218,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,219,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,220,2,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,301,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,302,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,303,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,304,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,305,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,306,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,307,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,308,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,309,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,310,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,311,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,312,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',2),
('Busch','002629',3,313,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,314,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,315,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,316,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,317,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,318,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,319,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,320,3,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,401,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,402,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,403,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',2),
('Busch','002629',3,404,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,405,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,406,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,407,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,408,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,409,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,410,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,411,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',4),
('Busch','002629',3,412,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,413,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,414,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,415,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,416,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,417,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,418,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',1),
('Busch','002629',3,419,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),
('Busch','002629',3,420,4,'Dorm','Yes','Yes','Yes','Yes','Wood',NULL,NULL,'No',0),



('Busch','002629',1,100,1,'Mail Room',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('Busch','002629',1,101,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,102,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,103,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,104,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,105,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,106,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',2),
('Busch','002629',1,107,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,108,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,109,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,110,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,111,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,112,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,113,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,114,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,115,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,116,1,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,201,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,202,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,203,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,204,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,205,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,206,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,207,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,208,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,209,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,210,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,211,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,212,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',0),
('Busch','002629',1,213,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,214,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',2),
('Busch','002629',1,215,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
('Busch','002629',1,216,2,'Dorm','No','No','No','No','Wood',NULL,NULL,'No',1),
