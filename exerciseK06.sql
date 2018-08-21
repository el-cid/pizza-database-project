SELECT DISTINCT ObjectName, ItemOrdered.ModelID, ItemOrdered.Amount
FROM ItemOrdered LEFT OUTER JOIN
     AddOn ON ItemOrdered.ItemNo = AddOn.ItemNo INNER JOIN
     Product ON ItemOrdered.ProductID = Product.ProductID AND ItemOrdered.ModelID = Product.ModelID INNER JOIN
     ProductType ON Product.ProductID = ProductType.ProductID INNER JOIN
     Object ON ProductType.ProductID = Object.ObjectID INNER JOIN
     ObjectName ON Object.ObjectID = ObjectName.ObjectID
WHERE Language = 'english' AND ItemOrdered.OrderID = '3012'
ORDER BY ObjectName;
