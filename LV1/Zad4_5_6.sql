CREATE TABLE LaboratoryGroup(
	ID smallint,
	grouplabel varchar(30),
	proffesion varchar(30),
	studentNumber int,
	CONSTRAINT id_pk PRIMARY KEY(ID),
	CONSTRAINT label_uk UNIQUE(grouplabel)
)

CREATE TABLE Student(
	index_num int,
	name varchar(100),
	surname varchar(100),
	groupID smallint,
	enrollYear smallint,
	yearOfStudy tinyint,
	CONSTRAINT index_pk PRIMARY KEY(index_num),
	CONSTRAINT groupID_fk FOREIGN KEY(groupID) REFERENCES LaboratoryGroup(ID)
)

ALTER TABLE Student ADD average_grade NUMERIC;
ALTER TABLE Student ADD CONSTRAINT average_chk CHECK(average_grade<1.00); 
ALTER TABLE Student DROP COLUMN yearOfStudy;