SELECT Name, DeliveryArea
FROM   DeliveryBoy 
WHERE DeliveryArea IS NOT NULL AND
      DeliveryArea = ALL ( SELECT AreaCode 
			   FROM	( SELECT OrderID, DeliveredBy
	 			  FROM   Delivery
			 	  WHERE WhenDelivered IS NOT NULL	
		       		) AS DeliveredOrders INNER JOIN 
		       		( SELECT OrderID, Customer
		         	  FROM Ordered
	 		        ) As Orders ON DeliveredOrders.OrderID = Orders.OrderID INNER JOIN
		       		( SELECT CustomerID, AreaCode
		         	  FROM Customer
		       		) As Customers ON Orders.Customer = Customers.CustomerID
			   WHERE DeliveryBoy.BoyID = DeliveredOrders.DeliveredBy	
			 )
ORDER BY Name DESC;
