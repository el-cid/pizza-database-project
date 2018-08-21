SELECT ObjectName AS PNAME
FROM ProductType INNER JOIN
     ObjectName ON ProductType.ProductID = ObjectName.ObjectID
WHERE Description LIKE '%pizza%' AND Language = 'finnish'
ORDER BY PNAME DESC;
