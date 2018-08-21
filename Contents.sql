CREATE TABLE Contents (
	ProductId        VARCHAR(8) NOT NULL,
	MaterialId       VARCHAR(8) NOT NULL,
	CONSTRAINT pk_contents PRIMARY KEY (ProductId,MaterialId),
	CONSTRAINT fk_contents_producttype FOREIGN KEY (ProductId)
	REFERENCES ProductType,
	CONSTRAINT fk_contents_material FOREIGN KEY (MaterialId)
	REFERENCES Material
);
