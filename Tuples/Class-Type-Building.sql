CREATE TABLE Class-Type-Building(campus_name VARCHAR(30) NOT NULL, code CHAR(6) NOT NULL , ID INT NOT NULL, roomID INT NOT NULL, floor_num INT, type VARCHAR(30), capacity INT, desk_type VARCHAR(30), board_type VARCHAR(30), PRIMARY KEY(campus_name,code,ID,roomID))
INSERT INTO Class-Type-Building(campus_name,code,ID,roomID,floor_num,type,capacity,desk_type,board_type) VALUES

('Main','104659',11,100,1,'Mail Room',NULL,NULL,NULL),
('Main','104659',11,101,1,'Regular Classroom',15,'Detached','Chalk'),
('Main','104659',11,102,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',11,103,1,'Regular Classroom',15,'Detached','Chalk'),
('Main','104659',11,104,1,'Regular Classroom',22,'Attached','Chalk'),
('Main','104659',11,105,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',11,106,1,'Computer Lab',NULL,NULL,NULL),
('Main','104659',11,107,1,'Office',NULL,NULL,NULL),
('Main','104659',11,108,1,'Office',NULL,NULL,NULL),
('Main','104659',11,109,1,'Faculty Lounge',NULL,NULL,NULL),
('Main','104659',11,110,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','104659',11,111,1,'Regular Classroom',32,'Attached','Chalk'),
('Main','104659',11,112,1,'Regular Classroom',30,'Detached','Chalk'),
('Main','104659',11,113,1,'Regular Classroom',22,'Attached','Chalk'),
('Main','104659',11,114,1,'Regular Classroom',22,'Detached','Chalk'),
('Main','104659',11,115,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','104659',11,116,1,'Regular Classroom',24,'Attached','Chalk'),
('Main','104659',11,201,2,'Lecture Hall',53,'Attached','Chalk'),
('Main','104659',11,202,2,'Lecture Hall',55,'Attached','Chalk'),
('Main','104659',11,203,2,'Lecture Hall',50,'Theater Seats','Chalk'),
('Main','104659',11,204,2,'Regular Classroom',30,'Attached','Chalk'),
('Main','104659',11,205,2,'Regular Classroom',15,'Attached','Chalk'),
('Main','104659',11,206,2,'Regular Classroom',15,'Attached','Chalk'),
('Main','104659',11,207,2,'Regular Classroom',20,'Detached','Chalk'),
('Main','104659',11,208,2,'Regular Classroom',22,'Detached','Chalk'),
('Main','104659',11,209,2,'Office',NULL,NULL,NULL),

('Main','104659',10,101,1,'Faculty Lounge',NULL,NULL,NULL),
('Main','104659',10,102,1,'Mail Room',NULL,NULL,NULL),
('Main','104659',10,103,1,'Office',NULL,NULL,NULL),
('Main','104659',10,104,1,'Office',NULL,NULL,NULL),
('Main','104659',10,105,1,'Office',NULL,NULL,NULL),
('Main','104659',10,106,1,'Office',NULL,NULL,NULL),
('Main','104659',10,107,1,'Office',NULL,NULL,NULL),
('Main','104659',10,108,1,'Office',NULL,NULL,NULL),
('Main','104659',10,109,1,'Office',NULL,NULL,NULL),
('Main','104659',10,110,1,'Office',NULL,NULL,NULL),
('Main','104659',10,111,1,'Office',NULL,NULL,NULL),
('Main','104659',10,112,1,'Office',NULL,NULL,NULL),
('Main','104659',10,113,1,'Office',NULL,NULL,NULL),
('Main','104659',10,114,1,'Office',NULL,NULL,NULL),
('Main','104659',10,115,1,'Office',NULL,NULL,NULL),
('Main','104659',10,201,2,'Faculty Lounge',NULL,NULL,NULL),
('Main','104659',10,202,2,'Office',NULL,NULL,NULL),
('Main','104659',10,203,2,'Office',NULL,NULL,NULL),
('Main','104659',10,204,2,'Office',NULL,NULL,NULL),
('Main','104659',10,205,2,'Office',NULL,NULL,NULL),
('Main','104659',10,206,2,'Office',NULL,NULL,NULL),
('Main','104659',10,207,2,'Office',NULL,NULL,NULL),
('Main','104659',10,208,2,'Office',NULL,NULL,NULL),
('Main','104659',10,209,2,'Office',NULL,NULL,NULL),
('Main','104659',10,210,2,'Office',NULL,NULL,NULL),
('Main','104659',10,211,2,'Office',NULL,NULL,NULL),
('Main','104659',10,212,2,'Office',NULL,NULL,NULL),
('Main','104659',10,213,2,'Office',NULL,NULL,NULL),
('Main','104659',10,214,2,'Office',NULL,NULL,NULL),
('Main','104659',10,215,2,'Office',NULL,NULL,NULL),
('Main','104659',10,301,3,'Computer Lab',NULL,NULL,NULL),
('Main','104659',10,302,3,'Faculty Lounge',NULL,NULL,NULL),
('Main','104659',10,303,3,'Office',NULL,NULL,NULL),
('Main','104659',10,304,3,'Office',NULL,NULL,NULL),
('Main','104659',10,305,3,'Office',NULL,NULL,NULL),
('Main','104659',10,306,3,'Office',NULL,NULL,NULL),
('Main','104659',10,307,3,'Office',NULL,NULL,NULL),
('Main','104659',10,308,3,'Office',NULL,NULL,NULL),
('Main','104659',10,309,3,'Office',NULL,NULL,NULL),
('Main','104659',10,310,3,'Office',NULL,NULL,NULL),
('Main','104659',10,311,3,'Office',NULL,NULL,NULL),
('Main','104659',10,312,3,'Office',NULL,NULL,NULL),
('Main','104659',10,313,3,'Office',NULL,NULL,NULL),
('Main','104659',10,314,3,'Office',NULL,NULL,NULL),
('Main','104659',10,315,3,'Office',NULL,NULL,NULL),
('Main','104659',10,401,4,'Faculty Lounge',NULL,NULL,NULL),
('Main','104659',10,402,4,'Office',NULL,NULL,NULL),
('Main','104659',10,403,4,'Office',NULL,NULL,NULL),
('Main','104659',10,404,4,'Office',NULL,NULL,NULL),
('Main','104659',10,405,4,'Office',NULL,NULL,NULL),
('Main','104659',10,406,4,'Office',NULL,NULL,NULL),
('Main','104659',10,407,4,'Office',NULL,NULL,NULL),
('Main','104659',10,408,4,'Office',NULL,NULL,NULL),
('Main','104659',10,409,4,'Office',NULL,NULL,NULL),
('Main','104659',10,410,4,'Office',NULL,NULL,NULL),
('Main','104659',10,411,4,'Office',NULL,NULL,NULL),
('Main','104659',10,412,4,'Office',NULL,NULL,NULL),
('Main','104659',10,413,4,'Office',NULL,NULL,NULL),
('Main','104659',10,414,4,'Office',NULL,NULL,NULL),
('Main','104659',10,415,4,'Office',NULL,NULL,NULL),
('Main','104659',10,501,5,'Faculty Lounge',NULL,NULL,NULL),
('Main','104659',10,502,5,'Office',NULL,NULL,NULL),
('Main','104659',10,503,5,'Office',NULL,NULL,NULL),
('Main','104659',10,504,5,'Office',NULL,NULL,NULL),
('Main','104659',10,505,5,'Office',NULL,NULL,NULL),
('Main','104659',10,506,5,'Office',NULL,NULL,NULL),
('Main','104659',10,507,5,'Office',NULL,NULL,NULL),
('Main','104659',10,508,5,'Office',NULL,NULL,NULL),
('Main','104659',10,509,5,'Office',NULL,NULL,NULL),

('Main','104659',7,100,1,'Mail Room',NULL,NULL,NULL),
('Main','104659',7,101,1,'Office',NULL,NULL,NULL),
('Main','104659',7,102,1,'Office',NULL,NULL,NULL),
('Main','104659',7,103,1,'Regular Classroom',32,'Attached','Chalk'),
('Main','104659',7,104,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','104659',7,105,1,'Regular Classroom',15,'Attached','Chalk'),
('Main','104659',7,106,1,'Faculty Lounge',NULL,NULL,NULL),
('Main','104659',7,107,1,'Regular Classroom',15,'Detached','Chalk'),
('Main','104659',7,108,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','104659',7,109,1,'Office',NULL,NULL,NULL),
('Main','104659',7,110,1,'Office',NULL,NULL,NULL),
('Main','104659',7,111,1,'Regular Classroom',23,'Detached','Chalk'),
('Main','104659',7,112,1,'Regular Classroom',22,'Attached','Chalk'),
('Main','104659',7,113,1,'Regular Classroom',21,'Attached','Chalk'),
('Main','104659',7,114,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','104659',7,115,1,'Regular Classroom',25,'Attached','Chalk'),
('Main','104659',7,116,1,'Office',NULL,NULL,NULL),
('Main','104659',7,201,2,'Lecture Hall',80,'Theater Seats','Chalk'),
('Main','104659',7,202,2,'Lecture Hall',150,'Theater Seats','Chalk'),
('Main','104659',7,203,2,'Regular Classroom',35,'Detached','Chalk'),
('Main','104659',7,204,2,'Regular Classroom',30,'Attached','Chalk'),
('Main','104659',7,205,2,'Regular Classroom',25,'Detached','Chalk'),
('Main','104659',7,206,2,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',7,207,2,'Regular Classroom',27,'Detached','Chalk'),
('Main','104659',7,208,2,'Office',NULL,NULL,NULL),
('Main','104659',7,209,2,'Office',NULL,NULL,NULL),
('Main','104659',7,210,2,'Computer Lab',NULL,NULL,NULL),
('Main','104659',7,211,2,'Regular Classroom',34,'Detached','Chalk'),
('Main','104659',7,212,2,'Regular Classroom',30,'Attached','Chalk'),
('Main','104659',7,213,2,'Regular Classroom',25,'Detached','Chalk'),

('Main','104659',6,100,1,'Mail Room',NULL,NULL,NULL),
('Main','104659',6,101,1,'Regular Classroom',10,'Tables','Chalk'),
('Main','104659',6,102,1,'Regular Classroom',20,'Tables','Chalk'),
('Main','104659',6,103,1,'Regular Classroom',15,'Attached','Chalk'),
('Main','104659',6,104,1,'Lecture Hall',100,'Tables','Chalk'),
('Main','104659',6,105,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',6,106,1,'Regular Classroom',35,'Detached','Chalk'),
('Main','104659',6,107,1,'Regular Classroom',25,'Tables','Chalk'),
('Main','104659',6,108,1,'Regular Classroom',20,'Tables','Chalk'),
('Main','104659',6,109,1,'Regular Classroom',25,'Attached','Chalk'),
('Main','104659',6,110,1,'Regular Classroom',25,'Attached','Chalk'),
('Main','104659',6,111,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','104659',6,112,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','104659',6,113,1,'Office',NULL,NULL,NULL),
('Main','104659',6,114,1,'Office',NULL,NULL,NULL),
('Main','104659',6,115,1,'Office',NULL,NULL,NULL),
('Main','104659',6,116,1,'Lecture Hall',105,'Attached','Chalk'),
('Main','104659',6,117,1,'Study Room',NULL,NULL,NULL),
('Main','104659',6,201,2,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',6,202,2,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',6,203,2,'Lecture Hall',120,'Attached','Chalk'),
('Main','104659',6,204,2,'Regular Classroom',25,'Tables','Chalk'),
('Main','104659',6,205,2,'Regular Classroom',10,'Detached','Chalk'),
('Main','104659',6,206,2,'Lecture Hall',120,'Attached','Chalk'),
('Main','104659',6,207,2,'Regular Classroom',25,'Tables','Chalk'),
('Main','104659',6,208,2,'Regular Classroom',25,'Tables','Chalk'),
('Main','104659',6,209,2,'Regular Classroom',15,'Attached','Chalk'),
('Main','104659',6,210,2,'Regular Classroom',15,'Attached','Chalk'),
('Main','104659',6,211,2,'Regular Classroom',17,'Tables','Chalk'),
('Main','104659',6,212,2,'Regular Classroom',20,'Tables','Chalk'),
('Main','104659',6,213,2,'Office',NULL,NULL,NULL),
('Main','104659',6,214,2,'Office',NULL,NULL,NULL),
('Main','104659',6,215,2,'Office',NULL,NULL,NULL),
('Main','104659',6,216,2,'Student Lounge',NULL,NULL,NULL),

('Main','104659',3,100,1,'Mail Room',NULL,NULL,NULL),
('Main','104659',3,101,1,'Regular Classroom',10,'Tables','Chalk'),
('Main','104659',3,102,1,'Regular Classroom',10,'Tables','Chalk'),
('Main','104659',3,103,1,'Regular Classroom',10,'Tables','Chalk'),
('Main','104659',3,104,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','104659',3,105,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','104659',3,106,1,'Regular Classroom',30,'Detached','Chalk'),
('Main','104659',3,107,1,'Regular Classroom',20,'Tables','Chalk'),
('Main','104659',3,108,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','104659',3,109,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',3,110,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',3,111,1,'Regular Classroom',10,'Tables','Chalk'),
('Main','104659',3,112,1,'Regular Classroom',10,'Tables','Chalk'),
('Main','104659',3,113,1,'Office',NULL,NULL,NULL),
('Main','104659',3,114,1,'Office',NULL,NULL,NULL),
('Main','104659',3,115,1,'Office',NULL,NULL,NULL),

('Main','104659',1,100,1,'Mail Room',NULL,NULL,NULL),
('Main','104659',1,101,1,'Office',NULL,NULL,NULL),
('Main','104659',1,102,1,'Lecture Hall',40,'Detached','Chalk'),
('Main','104659',1,103,1,'Lecture Hall',50,'Theater Seats','Chalk'),
('Main','104659',1,104,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',1,105,1,'Regular Classroom',25,'Attached','Chalk'),
('Main','104659',1,106,1,'Regular Classroom',24,'Attached','Chalk'),
('Main','104659',1,107,1,'Regular Classroom',15,'Detached','Chalk'),
('Main','104659',1,108,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',1,109,1,'Regular Classroom',25,'Detached','Chalk'),
('Main','104659',1,110,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','104659',1,111,1,'Faculty Lounge',NULL,NULL,NULL),
('Main','104659',1,112,1,'Office',NULL,NULL,NULL),
('Main','104659',1,113,1,'Office',NULL,NULL,NULL),
('Main','104659',1,114,1,'Office',NULL,NULL,NULL),
('Main','104659',1,115,1,'Office',NULL,NULL,NULL),
('Main','104659',1,201,2,'Office',NULL,NULL,NULL),
('Main','104659',1,202,2,'Lecture Hall',40,'Detached','Chalk'),
('Main','104659',1,203,2,'Lecture Hall',50,'Theater Seats','Chalk'),
('Main','104659',1,204,2,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',1,205,2,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',1,206,2,'Regular Classroom',24,'Attached','Chalk'),
('Main','104659',1,207,2,'Regular Classroom',15,'Attached','Chalk'),
('Main','104659',1,208,2,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',1,209,2,'Regular Classroom',25,'Detached','Chalk'),
('Main','104659',1,210,2,'Regular Classroom',20,'Detached','Chalk'),
('Main','104659',1,211,2,'Regular Classroom',15,'Detached','Chalk'),
('Main','104659',1,212,2,'Regular Classroom',20,'Attached','Chalk'),
('Main','104659',1,213,2,'Regular Classroom',18,'Attached','Chalk'),
('Main','104659',1,214,2,'Regular Classroom',20,'Detached','Chalk'),
('Main','104659',1,215,2,'Student Lounge',NULL,NULL,NULL),


















('Main','789123',12,100,1,'Mail Room',NULL,NULL,NULL),
('Main','789123',12,101,1,'Faculty Lounge',NULL,NULL,NULL),
('Main','789123',12,102,1,'Office',NULL,NULL,NULL),
('Main','789123',12,103,1,'Office',NULL,NULL,NULL),
('Main','789123',12,104,1,'Office',NULL,NULL,NULL),
('Main','789123',12,105,1,'Office',NULL,NULL,NULL),
('Main','789123',12,106,1,'Office',NULL,NULL,NULL),
('Main','789123',12,107,1,'Office',NULL,NULL,NULL),
('Main','789123',12,108,1,'Office',NULL,NULL,NULL),
('Main','789123',12,109,1,'Office',NULL,NULL,NULL),
('Main','789123',12,110,1,'Office',NULL,NULL,NULL),
('Main','789123',12,111,1,'Office',NULL,NULL,NULL),
('Main','789123',12,112,1,'Office',NULL,NULL,NULL),
('Main','789123',12,113,1,'Office',NULL,NULL,NULL),
('Main','789123',12,114,1,'Office',NULL,NULL,NULL),
('Main','789123',12,115,1,'Office',NULL,NULL,NULL),
('Main','789123',12,201,2,'Office',NULL,NULL,NULL),
('Main','789123',12,202,2,'Office',NULL,NULL,NULL),
('Main','789123',12,203,2,'Office',NULL,NULL,NULL),
('Main','789123',12,204,2,'Office',NULL,NULL,NULL),
('Main','789123',12,205,2,'Office',NULL,NULL,NULL),
('Main','789123',12,206,2,'Office',NULL,NULL,NULL),
('Main','789123',12,207,2,'Office',NULL,NULL,NULL),
('Main','789123',12,208,2,'Office',NULL,NULL,NULL),
('Main','789123',12,209,2,'Office',NULL,NULL,NULL),
('Main','789123',12,210,2,'Office',NULL,NULL,NULL),
('Main','789123',12,211,2,'Office',NULL,NULL,NULL),
('Main','789123',12,212,2,'Office',NULL,NULL,NULL),
('Main','789123',12,213,2,'Office',NULL,NULL,NULL),
('Main','789123',12,214,2,'Office',NULL,NULL,NULL),
('Main','789123',12,215,2,'Faculty Lounge',NULL,NULL,NULL),
('Main','789123',9,201,2,'Regular Classroom',31,'Attached','Chalk'),
('Main','789123',9,202,2,'Regular Classroom',19,'Detached','Chalk'),
('Main','789123',9,203,2,'Regular Classroom',24,'Attached','Chalk'),
('Main','789123',9,204,2,'Regular Classroom',25,'Detached','Chalk'),
('Main','789123',9,205,2,'Office',NULL,NULL,NULL),
('Main','789123',9,206,2,'Office',NULL,NULL,NULL),
('Main','789123',9,208,2,'Office',NULL,NULL,NULL),
('Main','789123',9,209,2,'Office',NULL,NULL,NULL),
('Main','789123',9,210,2,'Computer Lab',NULL,NULL,NULL),
('Main','789123',9,211,2,'Faculty Lounge',NULL,NULL,NULL),
('Main','789123',9,301,3,'Faculty Lounge',NULL,NULL,NULL),
('Main','789123',9,302,3,'Office',NULL,NULL,NULL),
('Main','789123',9,304,3,'Office',NULL,NULL,NULL),
('Main','789123',9,305,3,'Office',NULL,NULL,NULL),
('Main','789123',9,306,3,'Office',NULL,NULL,NULL),
('Main','789123',9,307,3,'Office',NULL,NULL,NULL),
('Main','789123',9,308,3,'Office',NULL,NULL,NULL),
('Main','789123',9,309,3,'Office',NULL,NULL,NULL),
('Main','789123',13,101,1,'Mail Room',NULL,NULL,NULL),
('Main','789123',13,102,1,'Lecture Hall',100,'Theater Seats','Chalk'),
('Main','789123',13,103,1,'Regular Classroom',25,'Detached','Chalk'),
('Main','789123',13,104,1,'Student Lounge',NULL,NULL,NULL),
('Main','789123',13,105,1,'Regular Classroom',47,'Attached','Chalk'),
('Main','789123',13,106,1,'Regular Classroom',10,'Attached','Chalk'),
('Main','789123',13,107,1,'Office',NULL,NULL,NULL),
('Main','789123',13,108,1,'Office',NULL,NULL,NULL),
('Main','789123',13,109,1,'Office',NULL,NULL,NULL),
('Main','789123',13,110,1,'Office',NULL,NULL,NULL),
('Main','789123',13,111,1,'Office',NULL,NULL,NULL),
('Main','789123',13,112,1,'Regular Classroom',39,'Attached','Chalk'),
('Main','789123',13,113,1,'Regular Classroom',39,'Attached','Chalk'),
('Main','789123',13,114,1,'Regular Classroom',15,'Detached','Chalk'),
('Main','789123',13,115,1,'Regular Classroom',15,'Detached','Chalk'),
('Main','789123',13,201,2,'Regular Classroom',20,'Attached','Chalk'),
('Main','789123',13,202,2,'Lecture Hall',90,'Theater Seats','Chalk'),
('Main','789123',13,203,2,'Regular Classroom',21,'Detached','Chalk'),
('Main','789123',13,204,2,'Regular Classroom',14,'Tables','Chalk'),
('Main','789123',13,205,2,'Student Lounge',NULL,NULL,NULL),
('Main','789123',13,206,2,'Faculty Lounge',NULL,NULL,NULL),
('Main','789123',13,207,2,'Regular Classroom',20,'Attached','Chalk'),
('Main','789123',13,208,2,'Regular Classroom',30,'Attached','Chalk'),
('Main','789123',13,209,2,'Office',NULL,NULL,NULL),
('Main','789123',13,210,2,'Lecture Hall',55,'Theater Seats','Chalk'),
('Main','789123',13,211,2,'Office',NULL,NULL,NULL),
('Main','789123',13,212,2,'Regular Classroom',24,'Attached','Chalk'),
('Main','789123',8,101,1,'Mail Room',NULL,NULL,NULL),
('Main','789123',8,102,1,'Lecture Hall',100,'Theater Seats','Chalk'),
('Main','789123',8,103,1,'Regular Classroom',25,'Detached','Chalk'),
('Main','789123',8,104,1,'Student Lounge',NULL,NULL,NULL),
('Main','789123',8,105,1,'Regular Classroom',35,'Detached','Chalk'),
('Main','789123',8,106,1,'Regular Classroom',30,'Detached','Chalk'),
('Main','789123',8,107,1,'Office',NULL,NULL,NULL),
('Main','789123',8,108,1,'Office',NULL,NULL,NULL),
('Main','789123',8,109,1,'Office',NULL,NULL,NULL),
('Main','789123',8,110,1,'Lecture Hall',80,'Theater Seats','Chalk'),
('Main','789123',8,111,1,'Office',NULL,NULL,NULL),
('Main','789123',8,201,2,'Regular Classroom',30,'Detached','Chalk'),
('Main','789123',8,202,2,'Lecture Hall',100,'Theater Seats','Chalk'),
('Main','789123',8,203,2,'Regular Classroom',21,'Detached','Chalk'),
('Main','789123',8,204,2,'Regular Classroom',14,'Tables','Chalk'),
('Main','789123',8,205,2,'Student Lounge',NULL,NULL,NULL),
('Main','789123',8,206,2,'Faculty Lounge',NULL,NULL,NULL),
('Main','789123',8,207,2,'Regular Classroom',25,'Detached','Chalk'),
('Main','789123',8,208,2,'Regular Classroom',35,'Detached','Chalk'),
('Main','789123',8,209,2,'Office',NULL,NULL,NULL),
('Main','789123',8,210,2,'Lecture Hall',55,'Theater Seats','Chalk'),
('Main','789123',8,211,2,'Office',NULL,NULL,NULL),
('Main','789123',18,101,1,'Office',NULL,NULL,NULL),
('Main','789123',18,102,1,'Lecture Hall',40,'Detached','Chalk'),
('Main','789123',18,103,1,'Lecture Hall',100,'Theater Seats','Chalk'),
('Main','789123',18,104,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','789123',18,105,1,'Regular Classroom',35,'Detached','Chalk'),
('Main','789123',18,106,1,'Regular Classroom',30,'Detached','Chalk'),
('Main','789123',18,107,1,'Regular Classroom',12,'Detached','Chalk'),
('Main','789123',18,108,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','789123',18,109,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','789123',18,110,1,'Regular Classroom',20,'Detached','White'),
('Main','789123',18,111,1,'Student Lounge',NULL,NULL,NULL),
('Main','789123',18,112,1,'Office',NULL,NULL,NULL),
('Main','789123',18,113,1,'Office',NULL,NULL,NULL),
('Main','789123',18,114,1,'Office',NULL,NULL,NULL),
('Main','789123',18,115,1,'Office',NULL,NULL,NULL),
('Main','789123',18,116,1,'Mail Room',NULL,NULL,NULL),
('Main','789123',19,101,1,'Office',NULL,NULL,NULL),
('Main','789123',19,102,1,'Lecture Hall',40,'Detached','Chalk'),
('Main','789123',19,103,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','789123',19,104,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','789123',19,105,1,'Regular Classroom',35,'Detached','Chalk'),
('Main','789123',19,106,1,'Regular Classroom',30,'Detached','Chalk'),
('Main','789123',19,107,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','789123',19,108,1,'Office',NULL,NULL,NULL),
('Main','789123',19,109,1,'Mail Room',NULL,NULL,NULL),
('Main','789123',19,201,2,'Office',NULL,NULL,NULL),
('Main','789123',19,202,2,'Office',NULL,NULL,NULL),
('Main','789123',19,203,2,'Office',NULL,NULL,NULL),
('Main','789123',19,204,2,'Office',NULL,NULL,NULL),
('Main','789123',19,205,2,'Regular Classroom',12,'Tables','White'),
('Main','789123',19,206,2,'Regular Classroom',15,'Tables','White'),
('Main','789123',19,207,2,'Regular Classroom',10,'Tables','White'),
('Main','789123',19,208,2,'Regular Classroom',25,'Attached','White'),
('Main','789123',19,208,2,'Office',NULL,NULL,NULL),
('Main','789123',5,101,1,'Office',NULL,NULL,NULL),
('Main','789123',5,102,1,'Regular Classroom',15,'Detached','Chalk'),
('Main','789123',5,103,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','789123',5,104,1,'Regular Classroom',20,'Attached','Chalk'),
('Main','789123',5,105,1,'Regular Classroom',35,'Detached','Chalk'),
('Main','789123',5,106,1,'Regular Classroom',30,'Detached','Chalk'),
('Main','789123',5,107,1,'Regular Classroom',20,'Detached','Chalk'),
('Main','789123',5,108,1,'Regular Classroom',15,'Attached','Chalk'),
('Main','789123',5,109,1,'Office',NULL,NULL,NULL),
('Main','789123',5,110,1,'Mail Room',NULL,NULL,NULL),
('Main','789123',5,201,2,'Office',NULL,NULL,NULL),
('Main','789123',5,202,2,'Office',NULL,NULL,NULL),
('Main','789123',5,203,2,'Office',NULL,NULL,NULL),
('Main','789123',5,204,2,'Office',NULL,NULL,NULL),
('Main','789123',5,205,2,'Regular Classroom',12,'Tables','Chalk'),
('Main','789123',5,206,2,'Regular Classroom',15,'Tables','Chalk'),
('Main','789123',5,207,2,'Regular Classroom',12,'Tables','Chalk'),
('Main','789123',5,208,2,'Regular Classroom',10,'Tables','Chalk'),
('Main','789123',4,101,1,'Regular Classroom',10,'Tables','Chalk'),
('Main','789123',4,102,1,'Regular Classroom',10,'Tables','Chalk'),
('Main','789123',4,103,1,'Regular Classroom',5,'Tables','Chalk'),
('Main','789123',4,104,1,'Regular Classroom',20,'Tables','Chalk'),
('Main','789123',4,105,1,'Regular Classroom',30,'Attached','Chalk'),
('Main','789123',4,106,1,'Office',NULL,NULL,NULL),
('Main','789123',4,107,1,'Office',NULL,NULL,NULL),
('Main','789123',4,108,1,'Mail Room',NULL,NULL,NULL),
('Main','789123',3,101,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','789123',3,102,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','789123',3,103,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','789123',3,104,1,'Regular Classroom',20,'Tables','Chalk'),
('Main','789123',3,105,1,'Regular Classroom',35,'Attached','Chalk'),
('Main','789123',3,106,1,'Regular Classroom',30,'Attached','Chalk'),
('Main','789123',3,107,1,'Regular Classroom',20,'Tables','Chalk'),
('Main','789123',3,108,1,'Regular Classroom',15,'Tables','Chalk'),
('Main','789123',3,109,1,'Office',NULL,NULL,NULL),
('Main','789123',3,110,1,'Office',NULL,NULL,NULL),
('Main','789123',3,111,1,'Mail Room',NULL,NULL,NULL),
('Main','789123',1,101,1,'Mail Room',NULL,NULL,NULL),
('Main','789123',1,102,1,'Lecture Hall',100,'Theater Seats','Chalk'),
('Main','789123',1,103,1,'Regular Classroom',25,'Attached','Chalk'),
('Main','789123',1,104,1,'Student Lounge',NULL,NULL,NULL),
('Main','789123',1,105,1,'Regular Classroom',35,'Attached','Chalk'),
('Main','789123',1,106,1,'Regular Classroom',30,'Attached','Chalk'),
('Main','789123',1,107,1,'Office',NULL,NULL,NULL),
('Main','789123',1,108,1,'Office',NULL,NULL,NULL),
('Main','789123',1,109,1,'Office',NULL,NULL,NULL),
('Main','789123',1,110,1,'Lecture Hall',100,'Theater Seats','Chalk'),
('Main','789123',1,111,1,'Office',NULL,NULL,NULL),
('Main','789123',1,201,2,'Regular Classroom',38,'Detached','Chalk'),
('Main','789123',1,202,2,'Lecture Hall',100,'Theater Seats','Chalk'),
('Main','789123',1,203,2,'Regular Classroom',27,'Detached','Chalk'),
('Main','789123',1,204,2,'Regular Classroom',25,'Attached','Chalk'),
('Main','789123',1,205,2,'Regular Classroom',35,'Attached','Chalk'),
('Main','789123',1,206,2,'Regular Classroom',15,'Tables','Chalk'),
('Main','789123',1,207,2,'Student Lounge',NULL,NULL,NULL),
('Main','789123',1,208,2,'Faculty Lounge',NULL,NULL,NULL),
('Main','789123',1,209,2,'Office',NULL,NULL,NULL),
('Main','789123',1,210,2,'Lecture Hall',55,'Theater Seats','Chalk'),
('Main','789123',1,211,2,'Office',NULL,NULL,NULL),
('Main','789123',1,301,3,'Regular Classroom',38,'Detached','Chalk'),
('Main','789123',1,302,3,'Regular Classroom',30,'Detached','Chalk'),
('Main','789123',1,303,3,'Regular Classroom',17,'Detached','Chalk'),
('Main','789123',1,304,3,'Regular Classroom',5,'Attached','Chalk'),
('Main','789123',1,305,3,'Regular Classroom',35,'Attached','Chalk'),
('Main','789123',1,306,3,'Regular Classroom',15,'Tables','Chalk'),
('Main','789123',1,307,3,'Regular Classroom',38,'Detached','Chalk'),
('Main','789123',1,308,3,'Regular Classroom',40,'Detached','Chalk'),
('Main','789123',1,309,3,'Computer Lab',NULL,NULL,NULL),
('Main','789123',1,401,4,'Lecture Hall',55,'Attached','White'),
('Main','789123',1,402,4,'Lecture Hall',62,'Theater Seats','White'),
('Main','789123',1,403,4,'Student Lounge',NULL,NULL,NULL),
('Main','789123',1,404,4,'Student Lounge',NULL,NULL,NULL),
('Main','789123',1,405,4,'Office',NULL,NULL,NULL),
('Main','789123',1,501,5,'Office',NULL,NULL,NULL),
('Main','789123',1,502,5,'Office',NULL,NULL,NULL),
('Main','789123',1,503,5,'Office',NULL,NULL,NULL),
('Main','789123',1,504,5,'Office',NULL,NULL,NULL),
('Main','789123',1,505,5,'Office',NULL,NULL,NULL),
('Main','789123',1,506,5,'Office',NULL,NULL,NULL),
('Main','789123',1,507,5,'Office',NULL,NULL,NULL),
('Main','789123',1,508,5,'Office',NULL,NULL,NULL),
('Main','789123',1,509,5,'Office',NULL,NULL,NULL),
('Main','789123',1,510,5,'Faculty Lounge',NULL,NULL,NULL),
