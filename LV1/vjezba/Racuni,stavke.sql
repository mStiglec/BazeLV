CREATE TABLE racuni(
	broj INT,
	datum DATETIME NOT NULL,
	kupac CHAR(100),
	CONSTRAINT racuni_pk PRIMARY KEY(broj)
 );

CREATE TABLE stavke_racuna(
	 broj_racuna INT,
	 rb INT,
	 kolicina DECIMAL(5, 2) NOT NULL DEFAULT 1,
	 jm CHAR(3) NOT NULL DEFAULT 'kom',
	 naziv_robe VARCHAR(30) NOT NULL,
	 cijena DECIMAL(6, 2) NOT NULL,
	 CONSTRAINT stavke_pk PRIMARY KEY(broj_racuna, rb),
	 CONSTRAINT stavke_fk_racuni FOREIGN KEY(broj_racuna) REFERENCES racuni(broj) ON DELETE CASCADE,
	 CONSTRAINT stavke_chk_jm CHECK(jm IN ('kom', 'lit', 'kg')),
	 CONSTRAINT stavke_chk_kolicina CHECK(kolicina > 0)
 );

 ALTER TABLE racuni ADD nacin_placanja varchar(30);
 ALTER TABLE racuni DROP COLUMN nacin_placanja;

