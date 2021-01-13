CREATE PROCEDURE checkPalindromProc
(@niz nvarchar(100)) AS 
	IF len(@niz) > 30 
		BEGIN 
			PRINT 'Riječ je predugačka,  maksimalan broj znakova je 30';
			RETURN(0)
		END
	DECLARE @palindrom nvarchar(100);
	DECLARE @i smallint = len(@niz);
	DECLARE @zadnjeSlovo char(1);
	WHILE @i > 0 
		BEGIN 
			SET @zadnjeSlovo = substring(@niz,@i,1);
			SET @palindrom = concat(@palindrom,@zadnjeSlovo);
			SET @i = @i -1;
		END
	IF @palindrom = @niz
		BEGIN
		PRINT 'palindrom'
		RETURN(0)
		END
	ELSE
		PRINT @palindrom
GO
