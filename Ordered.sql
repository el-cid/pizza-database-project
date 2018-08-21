CREATE TABLE Ordered (
	OrderId		INTEGER NOT NULL,
	WhenMade	TIMESTAMP NOT NULL,
	Customer	INTEGER NOT NULL, 
	WayIssued	VARCHAR(20),
	PaymentBy	VARCHAR(20) NOT NULL,
	TotalPrice	DECIMAL(6,2) NOT NULL,
	CONSTRAINT pk_order PRIMARY KEY (OrderId),
	CONSTRAINT fk_ordercustomer FOREIGN KEY (Customer)
				    REFERENCES Customer
);
