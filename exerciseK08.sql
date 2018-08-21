SELECT ObjectName AS Ingredient    
FROM   Contents   INNER JOIN
       ObjectName ON Contents.MaterialID = ObjectName.ObjectID
WHERE  ProductID  IN ( SELECT ObjectID
		       FROM ObjectName
		       WHERE ObjectName = 'Seafood pizza'
		     )
       AND language = 'english'
ORDER BY Ingredient;
