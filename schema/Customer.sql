CREATE TABLE Customer (
	CustomerId	INTEGER NOT NULL,
	Name		VARCHAR(60) NOT NULL,
	Address		VARCHAR(80) NOT NULL, 
	PaymentCategory	VARCHAR(20),
	AreaCode	VARCHAR(20) NOT NULL,
	Phone		VARCHAR(20),
	Email		VARCHAR(60),
	CONSTRAINT pk_customer PRIMARY KEY (CustomerId)
);
