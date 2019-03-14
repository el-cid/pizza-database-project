CREATE TABLE ItemOrdered (
	OrderId                INTEGER NOT NULL,
	ItemNo                 SMALLINT NOT NULL,
	ProductId              VARCHAR(8) NOT NULL, 
	ModelId                VARCHAR(20) NOT NULL,
	Amount                 SMALLINT NOT NULL,
	CONSTRAINT pk_ItemOrdered PRIMARY KEY (OrderId,ItemNo),
	CONSTRAINT fk_IO_Product FOREIGN KEY (ProductId,ModelId)
				 REFERENCES Product,
	CONSTRAINT fk_item_order FOREIGN KEY (OrderId)
				 REFERENCES Ordered
);
