CREATE TABLE ProductType (
	ProductId	VARCHAR(8) NOT NULL,
	Description	VARCHAR(1000),
	Picture		VARCHAR(120),
	ProductCategory	VARCHAR(8) NOT NULL,
	CONSTRAINT pk_producttype primary key (ProductId),
	CONSTRAINT fk_producttype_object FOREIGN KEY (ProductId)
				   	 REFERENCES Object
);
