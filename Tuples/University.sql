CREATE TABLE University(code CHAR(6) NOT NULL, name VARCHAR(30) , year_opened VARCHAR(30) , address VARCHAR(30), population INT, tuition INT,PRIMARY KEY(code));
INSERT INTO University(code,name,year_opened,address,population,tuition) VALUES 
('002629','Rutgers',1766,'NJ',68942,32191),
('104659','Middlesex County College',1976,'NJ',2800,22071),
('458216','Pennsylvania State University',1855,'PA',99133,31556),
('789123','Rowan University',1923,'NJ',18484,25658),
('568131','Drexel University',1891,'PA',26359,71375),
('774512','Stockton University',1969,'NJ',8242,30281),
('214156','University of California Berkeley',1868,'CA',41910,33418),
('111222','Harvard University',1636,'MA',22000,63025),
('924056','Yale University',1701,'CN',12312,66900),
('154863','Princeton University',1746,'NJ',8181,63690);
