CREATE TABLE Product (
	ProductId	VARCHAR(8) NOT NULL,
	ModelId		VARCHAR(20),
	Price		DECIMAL(5,2),
	CONSTRAINT pk_product PRIMARY KEY (ProductId,ModelId),
	CONSTRAINT fk_product_type FOREIGN KEY (ProductId)
				   REFERENCES ProductType
);
