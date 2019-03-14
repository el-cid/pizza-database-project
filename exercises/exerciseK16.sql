SELECT OrderID, ProductID, ObjectName, ModelID, Price, Amount
FROM   ObjectName INNER JOIN
       Product ON ObjectName.ObjectID = Product.ProductID INNER JOIN
       ItemOrdered USING ( ProductID, ModelID )
WHERE  OrderID = '3019' AND Language = 'english'
UNION
SELECT ItemOrdered.OrderID, MaterialID, ObjectName, 'PORTION', Material.AddOnPrice AS Price, AddOn.Amount
FROM   ItemOrdered INNER JOIN
       AddOn USING ( OrderID , ItemNo ) INNER JOIN
       Material USING ( MaterialID ) INNER JOIN
       ObjectName ON Material.MaterialID = ObjectName.ObjectID
WHERE  ItemOrdered.OrderID = '3019' AND Language = 'english'
ORDER BY ProductID;
