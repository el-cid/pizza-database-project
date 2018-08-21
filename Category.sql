CREATE TABLE Category (
	CategoryId	VARCHAR(8) NOT NULL,
	ListingSeqNo          SMALLINT,
	CONSTRAINT pk_category primary key (CategoryId),
	CONSTRAINT fk_category_object FOREIGN KEY (CategoryId)
				      REFERENCES Object
);
