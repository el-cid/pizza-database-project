SELECT ROUND( MIN( minutes ) ) AS shortest,
       ROUND( MAX( minutes ) ) AS longest,
       ROUND( AVG( minutes ) ) AS mid
FROM ( SELECT EXTRACT (EPOCH FROM( WhenDelivered - WhenMade )) / 60.0 AS minutes
  	FROM   ( SELECT OrderID, WhenMade
                FROM Ordered
              ) AS Orders INNER JOIN
                Delivery USING(OrderID)
       WHERE WhenDelivered IS NOT NULL	
     ) AS ElapsedTime;
