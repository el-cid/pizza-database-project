SELECT ProductID, ObjectName, ModelID, Price
FROM Product INNER JOIN
     ObjectName ON Product.ProductID = ObjectName.ObjectID AND Language = 'finnish'
WHERE Price >= ALL ( SELECT Price
		     FROM Product
		   );
