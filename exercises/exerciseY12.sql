WITH productAmounts AS
   ( SELECT ProductID, ModelID, ObjectName, SUM(Amount) AS Volume
     FROM   ItemOrdered INNER JOIN
            ObjectName ON ItemOrdered.ProductID = ObjectName.ObjectID AND Language = 'english'
     GROUP BY ProductID, ModelID, ObjectName
   )    
SELECT ProductID, ModelID, ObjectName, Volume
FROM   productAmounts
WHERE  Volume = ( SELECT MAX(Volume)
                  FROM productAmounts
                );
