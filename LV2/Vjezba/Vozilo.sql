CREATE TABLE vozilo
 (
 reg_oznaka CHAR(10) PRIMARY KEY,
 marka VARCHAR(20) NOT NULL,
 tip VARCHAR(20) NOT NULL,
 km SMALLINT,
 snaga SMALLINT,
 proizveden DATETIME,
 ime_vl NVARCHAR(20),
 prezime_vl NVARCHAR(20),
 prvi_vl CHAR(2) DEFAULT 'DA',
 CONSTRAINT chk_prvi_vl CHECK (prvi_vl IN ('DA', 'NE'))
 );
