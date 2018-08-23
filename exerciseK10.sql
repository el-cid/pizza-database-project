SELECT OrderID, WhenMade, AreaCode
FROM Ordered INNER JOIN 
     Customer ON Ordered.Customer = Customer.CustomerID
WHERE NOT EXISTS ( SELECT OrderID
		   FROM Delivery
		   WHERE Ordered.OrderID = Delivery.OrderID
		 )     
ORDER BY WhenMade;
