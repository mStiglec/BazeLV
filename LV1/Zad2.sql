create table SmartPhone(
	Manufacturer varchar(50),
	IMEI char(15),
	ModelName varchar(20),
	MemorySize int,
	ProcessorSpeed int,
	DisplaySize int,
	OperatingSystem varchar(50),
	OSUpdate smalldatetime,
	UserName varchar(100) NOT NULL,
	LastName varchar(100) NOT NULL,
	CONSTRAINT imei_pk PRIMARY KEY(IMEI),
	CONSTRAINT imei_chk CHECK(IMEI = 15)
)

