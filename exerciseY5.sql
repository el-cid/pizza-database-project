SELECT SUM(Amount) AS PIZZACOUNT
FROM   ItemOrdered INNER JOIN
       ProductType USING( ProductID )
WHERE  ProductCategory = ( SELECT ObjectID
       		     	   FROM ObjectName
	             	   WHERE ObjectName = 'Pizza'	
		       	     AND Language = 'english'
		   	 );
