CREATE TABLE racunalo
 (
	 inv_broj SMALLINT PRIMARY KEY,
	 tip VARCHAR(20),
	 ram SMALLINT,
	 hdd SMALLINT,
	 monitor SMALLINT,
	 mis VARCHAR(20),
	 tipkovnica VARCHAR(20),
	 mreza CHAR(2) DEFAULT 'da',
	 modem CHAR(2) DEFAULT 'da',
	 grafika VARCHAR(20),
	 CONSTRAINT chk_mreza CHECK (mreza IN ('DA', 'NE')),
	 CONSTRAINT chk_modem CHECK (modem IN ('DA', 'NE'))
 );