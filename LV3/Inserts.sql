INSERT INTO student VALUES ('8026211558919','Mislav','Štiglec',RAND()*(6-1)+1,'M','1944-06-15');
INSERT INTO student VALUES ('5799311844182','Ivana','Ivandic',RAND()*(6-1)+1,'Z','1952-07-28');
INSERT INTO student VALUES ('2392718296936','Marta','Martic',RAND()*(6-1)+1,'Z','1956-01-22');
INSERT INTO student VALUES ('5620691893705','Petar','Petrovic',RAND()*(6-1)+1,'M','1968-05-01');
INSERT INTO student VALUES ('3197262615815','Marko','Markic',RAND()*(6-1)+1,'M','1995-04-10');
INSERT INTO student VALUES ('5545756155302','Mihael','Mihic',RAND()*(6-1)+1,'M','1909-10-08');
INSERT INTO student VALUES ('1037653749547','Lovro','Lovric',RAND()*(6-1)+1,'M','1945-09-04');
INSERT INTO student VALUES ('1444525358009','Luka','Lukic',RAND()*(6-1)+1,'M','1948-10-19');
INSERT INTO student VALUES ('0354575816708','Dino','Dinovski',RAND()*(6-1)+1,'M','1949-07-14');
INSERT INTO student VALUES ('9823528142943','Maroje','Raguz',RAND()*(6-1)+1,'M','1975-12-01');
INSERT INTO student VALUES ('4858936423341','Antonio','Antonic',RAND()*(6-1)+1,'M','1963-06-23');
INSERT INTO student VALUES ('6136951896509','Lucija','Lucic',RAND()*(6-1)+1,'Z','1947-12-29');

INSERT INTO kolegij VALUES (RAND()*(30000-1)+1,'Matematika 1',RAND()*(6-1)+1);
INSERT INTO kolegij VALUES (RAND()*(30000-1)+1,'Matematika 2',RAND()*(6-1)+1);
INSERT INTO kolegij VALUES (RAND()*(30000-1)+1,'Matematika 3',RAND()*(6-1)+1);
INSERT INTO kolegij VALUES (RAND()*(30000-1)+1,'Osnove Elektrotehnike 1',RAND()*(6-1)+1);
INSERT INTO kolegij VALUES (RAND()*(30000-1)+1,'Osnove Elektrotehnike 2',RAND()*(6-1)+1);
INSERT INTO kolegij VALUES (RAND()*(30000-1)+1,'Objektno orjentirano programiranje',RAND()*(6-1)+1);
INSERT INTO kolegij VALUES (RAND()*(30000-1)+1,'Osnove automatskog upravljanja',RAND()*(6-1)+1);
INSERT INTO kolegij VALUES (RAND()*(30000-1)+1,'Baze Podataka',RAND()*(6-1)+1);
INSERT INTO kolegij VALUES (RAND()*(30000-1)+1,'Teorija informacije',RAND()*(6-1)+1);


INSERT INTO ispit VALUES (1870,'0354575816708',RAND()*(6-1)+1);
INSERT INTO ispit VALUES (4128,'1037653749547',RAND()*(6-1)+1);
INSERT INTO ispit VALUES (7280,'0354575816708',RAND()*(6-1)+1);
INSERT INTO ispit VALUES (14642,'8026211558919',RAND()*(6-1)+1);
INSERT INTO ispit VALUES (17973,'5620691893705',RAND()*(6-1)+1);
INSERT INTO ispit VALUES (7280,'4858936423341',RAND()*(6-1)+1);
INSERT INTO ispit VALUES (17973,'6136951896509',RAND()*(6-1)+1);
INSERT INTO ispit VALUES (17973,'4858936423341',RAND()*(6-1)+1);
INSERT INTO ispit VALUES (14642,'1444525358009',RAND()*(6-1)+1);


SELECT * FROM student;

SELECT * FROM kolegij;

SELECT * FROM ispit;
