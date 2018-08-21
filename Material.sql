CREATE TABLE Material (
	MaterialId            VARCHAR(8) NOT NULL,
	AddOnPrice            DECIMAL(5,2),
	CONSTRAINT pk_material PRIMARY KEY (MaterialId),
	CONSTRAINT fk_material_object FOREIGN KEY (MaterialId)
				      REFERENCES Object
);
