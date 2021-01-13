CREATE PROCEDURE GetZodiacSign
(@birthDate datetime) AS
IF day(@birthDate) BETWEEN 22 AND 31 AND month(@birthDate) = 12 OR day(@birthDate) BETWEEN 1 AND 20 AND month(@birthDate) = 1
	BEGIN
		PRINT 'jarac';
		RETURN;
	END

IF day(@birthDate) BETWEEN 21 AND 31 AND month(@birthDate) = 1 OR day(@birthDate) BETWEEN 1 AND 19 AND month(@birthDate) = 2
	BEGIN
		PRINT 'vodenjak';
		RETURN;
	END

IF day(@birthDate) BETWEEN 20 AND 31 AND month(@birthDate) = 2 OR day(@birthDate) BETWEEN 1 AND 20 AND month(@birthDate) = 3
	BEGIN
		PRINT 'ribe';
		RETURN;
	END

IF day(@birthDate) BETWEEN 21 AND 31 AND month(@birthDate) = 3 OR day(@birthDate) BETWEEN 1 AND 20 AND month(@birthDate) = 4
	BEGIN
		PRINT 'ovan';
		RETURN;
	END

IF day(@birthDate) BETWEEN 21 AND 31 AND month(@birthDate) = 4 OR day(@birthDate) BETWEEN 1 AND 21 AND month(@birthDate) = 5
	BEGIN
		PRINT 'bik';
		RETURN;
	END

IF day(@birthDate) BETWEEN 22 AND 31 AND month(@birthDate) = 5 OR day(@birthDate) BETWEEN 1 AND 21 AND month(@birthDate) = 6
	BEGIN
		PRINT 'blizanci';
		RETURN;
	END

IF day(@birthDate) BETWEEN 22 AND 31 AND month(@birthDate) = 6 OR day(@birthDate) BETWEEN 1 AND 23 AND month(@birthDate) = 7
	BEGIN
		PRINT 'rak';
		RETURN;
	END

IF day(@birthDate) BETWEEN 24 AND 31 AND month(@birthDate) = 7 OR day(@birthDate) BETWEEN 1 AND 22 AND month(@birthDate) = 8
	BEGIN
		PRINT 'lav';
		RETURN;
	END

IF day(@birthDate) BETWEEN 23 AND 31 AND month(@birthDate) = 8 OR day(@birthDate) BETWEEN 1 AND 22 AND month(@birthDate) = 9
	BEGIN
		PRINT 'djevica';
		RETURN;
	END

IF day(@birthDate) BETWEEN 23 AND 31 AND month(@birthDate) = 9 OR day(@birthDate) BETWEEN 1 AND 23 AND month(@birthDate) = 10
	BEGIN
		PRINT 'vaga';
		RETURN;
	END

IF day(@birthDate) BETWEEN 24 AND 31 AND month(@birthDate) = 10 OR day(@birthDate) BETWEEN 1 AND 22 AND month(@birthDate) = 11
	BEGIN
		PRINT 'škorpion';
		RETURN;
	END

IF day(@birthDate) BETWEEN 23 AND 31 AND month(@birthDate) = 11 OR day(@birthDate) BETWEEN 1 AND 21 AND month(@birthDate) = 12
	BEGIN
		PRINT 'strijelac';
		RETURN;
	END
RETURN



