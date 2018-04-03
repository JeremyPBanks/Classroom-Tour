CREATE TABLE ParkingLot(name VARCHAR(30) NOT NULL, code CHAR(6) NOT NULL, Lot_Name VARCHAR(30), capacity INT,pass_price FLOAT,pass_type VARCHAR(30),usable_by VARCHAR(30),PRIMARY KEY(code,name,Lot_Name));
INSERT INTO ParkingLot(name,code,Lot_Name,capacity,pass_price,pass_type,usable_by) VALUES 
('Livingston','002629','Yellow',500,200.0,'Normal','Students'),
('Livingston','002629','Red',250,400.0,'Premium','Students'),
('Livingston','002629','Green',100,200.0,'Normal','Staff'),
('Livingston','002629','Purple',50,350.0,'Premium','Staff'),
('Lingston','002629','Street',15,0.0,'',''),
('Busch','002629','A',500,200.0,'Normal','Students'),
('Busch','002629','AA',50,150.0,'Normal','Students'),
('Busch','002629','B',75,300.0,'Premium','Students'),
('Busch','002629','BB',150,275.0,'Premium','Students'),
('Busch','002629','C',100,100.0,'Normal','Staff'),
('Busch','002629','D',50,200.0,'Premium','Staff'),
('Busch','002629','Street',8,0.0,'',''),
('College Ave','002629','Garage A',475,400.0,'Normal','Students'),
('College Ave','002629','Garage B',10,350.0,'Normal','Students'),
('College Ave','002629','Lot A',75,500.0,'Premium','Students'),
('College Ave','002629','Lot B',150,375.0,'Premium','Students'),
('College Ave','002629','Lot C',100,200.0,'Normal','Staff'),
('College Ave','002629','Parking Meter',20,5.0,'',''),
('College Ave','002629','Street',10,0.0,'',''),
('Cook/Douglass','002629','Parking Meter',5,6.5,'',''),
('Cook/Douglass','002629','Street',20,0.0,'',''),
('Cook/Douglass','002629','Garage A',475,400.0,'Normal','Students'),
('Cook/Douglass','002629','Garage B',10,350.0,'Normal','Students'),
('Cook/Douglass','002629','Lot A',75,500.0,'Premium','Students'),
('Cook/Douglass','002629','Lot B',150,375.0,'Premium','Students'),
('Cook/Douglass','002629','Lot C',100,200.0,'Normal','Staff'),
('Dickinson Law','458216','Lot #1',500,200.0,'Normal','Students'),
('Dickinson Law','458216','Lot #2',250,400.0,'Premium','Students'),
('Dickinson Law','458216','Lot #3',100,200.0,'Normal','Staff'),
('Dickinson Law','458216','Lot #4',86,100.0,'Normal','Staff'),
('Dickinson Law','458216','Lot #5',75,300.0,'Premium','Students'),
('Dickinson Law','458216','Commuter Lot',100,200.0,'Normal','Students'),
('Dickinson Law','458216','Residence Lot',250,400.0,'Premium','Students'),
('Dickinson Law','458216','Parking Meter',5,7.5,'',''),
('Dickinson Law','458216','Street',3,0.0,'',''),
('College of Medicine','458216','Lot #8',74,100.0,'Normal','Staff'),
('College of Medicine','458216','Lot #9',100,200.0,'Normal','Staff'),
('College of Medicine','458216','Lot #10',500,200.0,'Normal','Students'),
('College of Medicine','458216','Lot #11',100,200.0,'Normal','Staff'),
('College of Medicine','458216','Lot #12',50,350.0,'Premium','Staff'),
('College of Medicine','458216','Lot #13',500,200.0,'Normal','Students'),
('College of Medicine','458216','Lot #14',150,275.0,'Premium','Students'),
('College of Medicine','458216','Residence Lot',50,350.0,'Premium','Students'),
('College of Medicine','458216','Commuter Lot',250,400.0,'Premium','Students'),
('College of Medicine','458216','Parking Meter',5,8.75,'',''),
('College of Medicine','458216','Street',3,0.0,'',''),
('University Park','458216','Lot #17',150,275.0,'Premium','Students'),
('University Park','458216','Lot #18',45,100.0,'Normal','Staff'),
('University Park','458216','Lot #19',50,350.0,'Premium','Staff'),
('University Park','458216','Lot #20',150,275.0,'Premium','Students'),
('University Park','458216','Lot #21',500,200.0,'Normal','Students'),
('University Park','458216','Lot #22',150,275.0,'Premium','Students'),
('University Park','458216','Lot #23',500,200.0,'Normal','Students'),
('University Park','458216','Lot #24',50,350.0,'Premium','Staff'),
('University Park','458216','Lot #25',100,200.0,'Normal','Staff'),
('University Park','458216','Lot #26',150,275.0,'Premium','Students'),
('University Park','458216','Lot #27',500,200.0,'Normal','Students'),
('University Park','458216','Lot #28',50,350.0,'Premium','Staff'),
('University Park','458216','Commuter Lot',25,100.0,'Normal','Students'),
('University Park','458216','Residence Lot',250,400.0,'Premium','Students'),
('University Park','458216','Parking Meter',50,12.5,'',''),
('University Park','458216','Street',30,0.0,'',''),
('Main','214156','Lot A',50,685.0,'Premium','Students'),
('Main','214156','Lot B',35,300.0,'Normal','Staff'),
('Main','214156','Lot C',40,850.0,'Premium','Staff'),
('Main','214156','Lot D',50,735.0,'Premium','Students'),
('Main','214156','Lot E',100,400.0,'Normal','Students'),
('Main','214156','Lot F',75,875.0,'Premium','Students'),
('Main','214156','Lot G',100,300.0,'Normal','Students'),
('Main','214156','Lot H',20,450.0,'Premium','Staff'),
('Main','214156','Lot I',100,400.0,'Normal','Staff'),
('Main','214156','Lot J',80,775.0,'Premium','Students'),
('Main','214156','Lot K',90,500.0,'Normal','Students'),
('Main','214156','Lot L',60,650.0,'Premium','Staff'),
('Main','214156','Residence Lot',15,600.0,'Normal','Students'),
('Main','214156','Commuter Lot',90,700.0,'Premium','Students'),
('Main','214156','Parking Meter',25,10.5,'',''),
('Main','214156','Street',45,0.0,'',''),
('Main','111222','Garage A',100,500.0,'Normal','Students'),
('Main','111222','Garage B',80,450.0,'Normal','Students'),
('Main','111222','Bronze Lot',65,600.0,'Premium','Students'),
('Main','111222','Gold Lot',50,475.0,'Premium','Students'),
('Main','111222','Silver Lot',90,300.0,'Normal','Staff'),
('Main','111222','Parking Meter',10,8.5,'',''),
('Main','111222','Street',30,0.0,'',''),
('Main','568131','Lot #1',500,200.0,'Normal','Students'),
('Main','568131','Lot #2',250,400.0,'Premium','Students'),
('Main','568131','Lot #3',100,200.0,'Normal','Staff'),
('Main','568131','Lot #4',86,100.0,'Normal','Staff'),
('Main','568131','Lot #5',65,500.0,'Premium','Students'),
('Main','568131','Commuter Lot',90,200.0,'Normal','Students'),
('Main','568131','Residence Lot',150,400.0,'Premium','Students'),
('Main','568131','Parking Meter',15,11.5,'',''),
('Main','568131','Street',35,0.0,'',''),
('Academy of Natural Sciences','568131','Lot #8',84,100.0,'Normal','Staff'),
('Academy of Natural Sciences','568131','Lot #9',80,200.0,'Normal','Staff'),
('Academy of Natural Sciences','568131','Lot #10',200,200.0,'Normal','Students'),
('Academy of Natural Sciences','568131','Lot #11',100,200.0,'Normal','Staff'),
('Academy of Natural Sciences','568131','Lot #12',50,350.0,'Premium','Staff'),
('Academy of Natural Sciences','568131','Lot #13',500,200.0,'Normal','Students'),
('Academy of Natural Sciences','568131','Lot #14',150,275.0,'Premium','Students'),
('Academy of Natural Sciences','568131','Residence Lot',50,350.0,'Premium','Students'),
('Academy of Natural Sciences','568131','Commuter Lot',250,400.0,'Premium','Students'),
('Academy of Natural Sciences','568131','Parking Meter',5,8.75,'',''),
('Academy of Natural Sciences','568131','Street',3,0.0,'',''),
('Queen Lane','568131','Lot #17',150,275.0,'Premium','Students'),
('Queen Lane','568131','Lot #18',45,100.0,'Normal','Staff'),
('Queen Lane','568131','Lot #19',50,350.0,'Premium','Staff'),
('Queen Lane','568131','Lot #20',150,275.0,'Premium','Students'),
('Queen Lane','568131','Lot #21',500,200.0,'Normal','Students'),
('Queen Lane','568131','Lot #22',150,275.0,'Premium','Students'),
('Queen Lane','568131','Lot #23',500,200.0,'Normal','Students'),
('Queen Lane','568131','Commuter Lot',50,350.0,'Premium','Students'),
('Queen Lane','568131','Residence Lot',100,200.0,'Normal','Staff'),
('Center City Hahnemann','568131','Lot #26',150,375.0,'Premium','Students'),
('Center City Hahnemann','568131','Lot #27',400,200.0,'Normal','Students'),
('Center City Hahnemann','568131','Lot #28',50,350.0,'Premium','Staff'),
('Center City Hahnemann','568131','Residence Lot',15,100.0,'Normal','Students'),
('Center City Hahnemann','568131','Commuter Lot',250,400.0,'Premium','Students'),
('Center City Hahnemann','568131','Parking Meter',100,15.5,'',''),
('Center City Hahnemann','568131','Street',50,0.0,'',''),
('Main','924056','Main Lot',700,100.0,'Normal','Students'),
('Main','924056','Lot A1',250,400.0,'Premium','Students'),
('Main','924056','Lot A2',100,200.0,'Normal','Staff'),
('Main','924056','Commuter Lot',86,100.0,'Normal','Students'),
('Main','924056','Residence Lot',15,300.0,'Premium','Students'),
('Main','924056','Lot B1',100,250.0,'Normal','Staff'),
('Main','924056','Lot B2',150,300.0,'Premium','Students'),
('Main','924056','Parking Meter',5,9.5,'',''),
('Main','924056','Street',16,0.0,'',''),
('Main','154863','Nash Lot',250,275.0,'Premium','Students'),
('Main','154863','Main Staff Lot',145,100.0,'Normal','Staff'),
('Main','154863','Lot I',50,250.0,'Premium','Staff'),
('Main','154863','Lot II',150,25.0,'Premium','Students'),
('Main','154863','Lot III',500,80.0,'Normal','Students'),
('Main','154863','Lot IV',150,175.0,'Premium','Students'),
('Main','154863','Lot V',500,100.0,'Normal','Students'),
('Main','154863','Lot VI',50,850.0,'Premium','Staff'),
('Main','154863','Lot VII',30,200.0,'Normal','Staff'),
('Main','154863','Lot VIII',150,375.0,'Premium','Students'),
('Main','154863','Lot IX',100,210.0,'Normal','Students'),
('Main','154863','Lot X',40,350.0,'Premium','Staff'),
('Main','154863','Commuter Lot',15,200.0,'Normal','Students'),
('Main','154863','Residence Lot',70,300.0,'Premium','Students'),
('Main','154863','Parking Meter',45,10.5,'',''),
('Main','154863','Street',24,0.0,'',''),
('Main','789123','Lot #1',72,50.0,'Normal','Staff'),
('Main','789123','Lot #2',100,100.0,'Normal','Staff'),
('Main','789123','Lot #3',100,100.0,'Normal','Students'),
('Main','789123','Lot #4',43,100.0,'Normal','Staff'),
('Main','789123','Lot #5',20,150.0,'Premium','Staff'),
('Main','789123','Commuter Lot',100,100.0,'Normal','Students'),
('Main','789123','Residence Lot',50,175.0,'Premium','Students'),
('Main','789123','Sports Lot',50,150.0,'Premium','Staff'),
('Main','789123','Arts Lot',150,100.0,'Premium','Students'),
('Main','789123','Parking Meter',2,2.75,'',''),
('Main','789123','Street',25,0.0,'',''),
('Main','104659','Commuter Lot',100,50.0,'Normal','Students'),
('Main','104659','Residence Lot',50,75.0,'Premium','Students'),
('Main','104659','Main Lot',150,50.0,'Normal','Students'),
('Main','104659','Staff Lot',50,0.0,'Normal','Staff'),
('Main','104659','Street',15,0.0,'',''),
('Main','774512','Commuter Lot',80,100.0,'Normal','Students'),
('Main','774512','Residence Lot',30,150.0,'Normal','Students'),
('Main','774512','Lot I',85,100.0,'Premium','Students'),
('Main','774512','Lot II',40,75.0,'Normal','Students'),
('Main','774512','Lot III',30,75.0,'Normal','Staff'),
('Main','774512','Parking Meter',2,3.5,'',''),
('Main','774512','Street',10,0.0,'','');