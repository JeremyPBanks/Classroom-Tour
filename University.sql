CREATE TABLE University(code CHAR(6) NOT NULL, name VARCHAR(30) , year_opened VARCHAR(30) , address VARCHAR(30), population INT, PRIMARY KEY(code));
INSERT INTO University(code,name,year_opened,address,population) VALUES 
('002629','Rutgers',1766,'NJ',68942),
('104659','Middlesex County College',1976,'NJ',2800),
('458216','Pennsylvania State University',1855,'PA',99133),
('789123','Rowan University',1923,'NJ',18484),
('568131','Drexel University',1891,'PA',26359),
('774512','Stockton University',1969,'NJ',8242),
('214156','University of California Berkeley',1868,'CA',41910),
('111222','Harvard University',1636,'MA',22000),
('924056','Yale University',1701,'CN',12312),
('154863','Princeton University',1746,'NJ',8181);