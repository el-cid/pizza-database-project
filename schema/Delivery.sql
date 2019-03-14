create table Delivery (
	OrderId		INTEGER NOT NULL,
	WhenAssigned	TIMESTAMP NOT NULL,
	DeliveredBy	VARCHAR(20) NOT NULL,
	WhenDelivered	TIMESTAMP,
	CONSTRAINT pk_delivery PRIMARY KEY (OrderId),
	CONSTRAINT fk_Delivery_Boy FOREIGN KEY (DeliveredBy)
				   REFERENCES DeliveryBoy,
	CONSTRAINT fk_delivery_order FOREIGN KEY (OrderId)
				     REFERENCES Ordered
);
