create table Djelatnik(
	Maticni_broj char(13),
	Ime varchar(80) NOT NULL,
	Prezime varchar(80) NOT NULL,
	CONSTRAINT matrb_pk PRIMARY KEY(Maticni_broj),
	CONSTRAINT matbr_chk CHECK(Maticni_broj = 13)
)

create table Projekt(
	Oznaka varchar(100),
	Naziv varchar(100),
	CONSTRAINT oznaka_pk PRIMARY KEY(Oznaka)
)

create table RadiNa(
	Maticni_broj char(13),
	Oznaka varchar(100),
	Broj_dana int,
	CONSTRAINT oznaka_matbr_pk PRIMARY KEY(Oznaka,Maticni_broj),
	CONSTRAINT matrb_fk FOREIGN KEY(Maticni_broj) REFERENCES Djelatnik(Maticni_broj),
	CONSTRAINT oznaka_fk FOREIGN KEY(Oznaka) REFERENCES Projekt(Oznaka)
)
