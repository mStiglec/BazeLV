create table student(
	ime NVARCHAR(50) NOT NULL,
	prezime NVARCHAR(50) NOT NULL,
	JMBG NCHAR(13),
	datum_rodenja SMALLDATETIME,
	spol CHAR(1),
	visina SMALLINT,
	slika IMAGE,
	broj_cipela TINYINT,
	CONSTRAINT jmbg_pk PRIMARY KEY(JMBG),
	CONSTRAINT spol_chk CHECK(spol IN('M','F')),
	CONSTRAINT broj_cipela_chk CHECK (broj_cipela > 0),
	CONSTRAINT visina_chk CHECK (visina > 0)
)

INSERT INTO student 
		VALUES('Mislav','Stiglec','1123456789123',GETDATE()-2,'M','182',NULL,'41');
INSERT INTO student 
		VALUES('Martina','Damjanovic','1123456789121',GETDATE()-1,'M','182',NULL,'41');
INSERT INTO student 
		VALUES('Maroje','Raguz','1123456789122',GETDATE()-3,'M','182',NULL,'41');
INSERT INTO student 
		VALUES('Dominik','Skrinjar','112262822124',GETDATE()-4,'F','182',NULL,'41');
INSERT INTO student 
		VALUES('Antonio','Zugec','1123456789125',GETDATE()-5,'M','182',NULL,'41');

UPDATE student set ime='Miky',prezime='brendon' WHERE ime='Martina' and prezime='Damjanovic';
UPDATE student set broj_cipela=broj_cipela+1; 
DELETE FROM student WHERE ime='Maroje';
DELETE FROM student;

SELECT * FROM student ORDER BY datum_rodenja DESC;