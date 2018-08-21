CREATE TABLE ObjectName (
	ObjectId	VARCHAR(8) NOT NULL,
	Language	VARCHAR(20) NOT NULL,     
	ObjectName	VARCHAR(40) NOT NULL,
	CONSTRAINT pk_objectname PRIMARY KEY (ObjectId, Language),
	CONSTRAINT fk_objectname_object FOREIGN KEY (ObjectId)
					REFERENCES Object
);
