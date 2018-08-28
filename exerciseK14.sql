SELECT OrderID, WhenMade, 
			 CASE 
	             	     WHEN DeliveredBy IS NULL
			 	  THEN 'non-assigned'
		     	 ELSE 
			      'assigned'
			 END
		     	 AS State
FROM (  SELECT OrderID, WhenMade, DeliveredBy
        FROM Ordered LEFT OUTER JOIN 
	     Delivery USING( OrderID )
	WHERE WhenDelivered IS NULL
        ORDER BY OrderID
     )  AS Orders;
