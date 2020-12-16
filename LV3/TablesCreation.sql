CREATE TABLE student(
	MBR CHAR(13),
	ime NVARCHAR(100) NOT NULL,
	prezime NVARCHAR(100) NOT NULL,
	godina_studija SMALLINT,
	spol CHAR(1) DEFAULT 'M',
	datum_rodenja SMALLDATETIME,
	CONSTRAINT mbr_pk PRIMARY KEY(MBR),
	CONSTRAINT spol_chk CHECK(spol IN ('M','Z')),
	CONSTRAINT mbr_chk CHECK(LEN(MBR)=13)
)

CREATE TABLE kolegij(
	sifra_kolegija SMALLINT,
	ime NVARCHAR(100),
	semestar SMALLINT
	CONSTRAINT sifra_pk PRIMARY KEY(sifra_kolegija),
	CONSTRAINT semestar_chk CHECK(semestar BETWEEN 1 AND 6)
)

CREATE TABLE ispit(
	sifra_kolegija SMALLINT,
	mbr_student CHAR(13),
	ocjena SMALLINT,
	CONSTRAINT ispit_pk PRIMARY KEY(sifra_kolegija,mbr_student),
	CONSTRAINT mbrstud_chk CHECK(LEN(mbr_student)=13),
	CONSTRAINT ocjena_chk CHECK(ocjena BETWEEN 1 AND 5)
)


ALTER TABLE ispit ADD CONSTRAINT kolegij_fk FOREIGN KEY(sifra_kolegija) REFERENCES kolegij(sifra_kolegija);
ALTER TABLE ispit ADD CONSTRAINT student_fk FOREIGN KEY(mbr_student) REFERENCES student(MBR);

DROP TABLE student;
DROP TABLE kolegij;
DROP TABLE ispit;

