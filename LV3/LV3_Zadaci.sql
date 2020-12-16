---------------ZADACI ZA LV3---------------

--1zadatak

SELECT SUBSTRING(s.ime,1,1),SUBSTRING(s.prezime,1,1),s.datum_rodenja
FROM student AS s;

SELECT *
FROM student AS s
ORDER BY s.datum_rodenja ASC;

SELECT TOP 1 s.ime,s.prezime 
FROM student AS s	
WHERE s.spol='Z'
ORDER BY s.datum_rodenja ASC;


--2zadatak

SELECT * FROM student;

SELECT COUNT(*) AS broj_studenata
FROM student

SELECT DISTINCT s.godina_studija
FROM student AS s;			--ispisuje sve razlicite godine studija

SELECT COUNT(DISTINCT s.godina_studija) 
FROM student AS s;

SELECT COUNT(*) FROM (
		SELECT DISTINCT s.godina_studija FROM student AS s
	) AS broj_godina;
	
--3zadatak

SELECT AVG(Cast(i.ocjena as Float)) AS prosjecna_ocjena
FROM ispit AS i
WHERE i.ocjena>1;

SELECT * FROM ispit,kolegij
WHERE ispit.sifra_kolegija=kolegij.sifra_kolegija AND ispit.ocjena>1;

SELECT k.ime,AVG(Cast(i.ocjena as Float)) AS prosjecna_ocjena
FROM ispit AS i,kolegij AS k
WHERE i.sifra_kolegija=k.sifra_kolegija AND ocjena>1
GROUP BY k.ime;

--4 zadatak

SELECT s.ime,s.prezime,i.ocjena
FROM student AS s,ispit AS i
WHERE s.MBR=i.mbr_student AND i.ocjena>1;


SELECT s.ime,s.prezime,AVG(Cast(i.ocjena as Float)) as prosjecna_ocjena
FROM student AS s,ispit AS i
WHERE s.MBR=i.mbr_student AND i.ocjena>1
GROUP BY s.ime,s.prezime,s.MBR
ORDER BY prosjecna_ocjena DESC;


SELECT s.MBR,AVG(Cast(i.ocjena as Float)) AS prosjecna_ocjena
FROM ispit AS i,student AS s
WHERE s.MBR=i.mbr_student AND i.ocjena>1
GROUP BY s.MBR
HAVING AVG(Cast(i.ocjena as Float))>2.5;

--SELECT s.MBR
--FROM student AS s
--WHERE 2.5 > (	SELECT s.ime,s.prezime,AVG(Cast(i.ocjena as Float)) 
--				FROM ispit AS i,student AS s
--				WHERE s.MBR=i.mbr_student AND i.ocjena>1
--				GROUP BY s.ime,s.prezime )  


--5 zadatak

GO
CREATE VIEW pogled_ispit AS
SELECT s.ime AS ime_studenta,s.prezime,k.ime as ime_kolegija,i.ocjena
FROM student AS s ,kolegij AS k,ispit AS i
WHERE s.MBR=i.mbr_student AND k.sifra_kolegija=i.sifra_kolegija
GO

DROP VIEW pogled_ispit;





