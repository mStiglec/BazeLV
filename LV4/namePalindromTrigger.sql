CREATE TRIGGER BuyerNamePalindrom
ON [dbo].[racuni_200]
INSTEAD OF INSERT AS 

	DECLARE @palindrom nvarchar(100);
	DECLARE @zadnjeSlovo char(1);
	DECLARE @imeKupca char(100);
	DECLARE @broj int;
	DECLARE @datum datetime;
	
	SELECT @imeKupca = kupac, @broj=broj, @datum=datum FROM inserted;
	DECLARE @i smallint = LEN(@imeKupca);

	WHILE @i > 0 
		BEGIN 
			SET @zadnjeSlovo = substring(@imeKupca,@i,1);
			SET @palindrom = concat(@palindrom,@zadnjeSlovo);
			SET @i = @i -1;
		END
	INSERT INTO [dbo].[racuni_200] VALUES(@broj,@datum,@palindrom);