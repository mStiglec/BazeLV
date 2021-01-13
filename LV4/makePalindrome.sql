CREATE FUNCTION checkPalindrom (@niz varchar(100)) 
RETURNS nvarchar(100) 
	BEGIN 
		IF len(@niz) > 30 
			BEGIN 
				RETURN 'Ulazna riječ je predugačka, maksimalan broj znakova je 30';
			END
		DECLARE @palindrom nvarchar(30);
		DECLARE @zadnjeSlovo char(1);
		DECLARE @i smallint = len(@niz);
		WHILE @i > 0 
			BEGIN 
				SET @zadnjeSlovo = substring(@niz,@i,1);
				SET @palindrom = concat(@palindrom,@zadnjeSlovo);
				SET @i = @i -1;
			END
		IF @palindrom = @niz 
			BEGIN 
				RETURN 'palindrom';
			END
		RETURN @palindrom;
	END
