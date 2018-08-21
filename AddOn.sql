CREATE TABLE AddOn (
	OrderId		INTEGER NOT NULL,
	ItemNo		SMALLINT NOT NULL,
	MaterialId	VARCHAR(8) NOT NULL, 
	Amount		SMALLINT NOT NULL,
	CONSTRAINT pk_AddOn PRIMARY KEY (OrderId,ItemNo,MaterialId),
	CONSTRAINT fk_AddOn_Item FOREIGN KEY (OrderId,ItemNo)
				 REFERENCES ItemOrdered,
	CONSTRAINT fk_AddOn_Material FOREIGN KEY (MaterialId)
				     REFERENCES Material
);
