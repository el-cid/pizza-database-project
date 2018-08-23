SELECT OrderID, WhenMade, AreaCode
FROM Ordered INNER JOIN
     Customer ON Ordered.Customer = Customer.CustomerID 
WHERE OrderID IN ( SELECT OrderID
		   FROM Delivery
		   WHERE WhenDelivered IS NULL
		 )
ORDER BY WhenMade;
