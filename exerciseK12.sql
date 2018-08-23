SELECT ObjectID, ObjectName
FROM   ObjectName
WHERE  ObjectID IN  ( SELECT MaterialID 
	              FROM   Material
		      WHERE MaterialID NOT IN ( SELECT MaterialID
					        FROM Contents
					      )
		    ) AND
       Language = 'finnish'
ORDER BY ObjectName;
