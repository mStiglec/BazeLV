SELECT * FROM student;
SELECT * FROM kolegij;
SELECT * FROM ispit;


SELECT * 
FROM student AS s
WHERE s.ime LIKE 'M%';

SELECT s.MBR,s.ime,s.prezime,s.spol
FROM student AS s 
WHERE s.godina_studija>2;

SELECT s.ime,s.prezime,k.ime
FROM student AS s,kolegij AS k
WHERE LEN(s.ime)=6;              --kartezijev produkt 9 kolegija * 4 studenta

SELECT *
FROM student RIGHT OUTER JOIN ispit ON student.MBR=ispit.mbr_student;

SELECT * 
FROM student LEFT OUTER JOIN ispit ON ispit.mbr_student=student.mbr;

SELECT *
FROM student AS s,ispit AS i,kolegij AS k
WHERE s.MBR=i.mbr_student AND k.sifra_kolegija=i.sifra_kolegija;  --nije bitno kojim redom ide jednakost

SELECT s.ime,s.prezime,k.ime,i.ocjena
FROM student AS s,ispit AS i,kolegij AS k
WHERE i.mbr_student=s.MBR AND k.sifra_kolegija=i.sifra_kolegija AND i.ocjena>1; --svi studenti koji su polozili ispit

SELECT s.ime,s.prezime,MAX(i.ocjena) AS najveca,MIN(i.ocjena) AS najmanja,COUNT(i.ocjena) AS broj_ocjena 
FROM student AS s,ispit AS i,kolegij AS k
WHERE i.mbr_student=s.MBR AND k.sifra_kolegija=i.sifra_kolegija
GROUP BY s.ime,s.prezime;           
--najveca ocjena koju je student dobio iz svih ispita koje je pisao
--grupira se po imenu tj. uzima sve sa istim imenom i samo za njih racuna agregatnu i daje rez,zato
--u ispisu moramo imat sve po cemu grupira da se zna po cemu se grupiralo

SELECT s.ime,s.prezime,MAX(i.ocjena) AS najveca,COUNT(i.ocjena) AS broj_ocjena 
FROM student AS s,ispit AS i,kolegij AS k
WHERE i.mbr_student=s.MBR AND k.sifra_kolegija=i.sifra_kolegija AND s.spol='M'
GROUP BY s.ime,s.prezime;   --najveca ocjen ai broj polaganih ispita za samo muske studente




