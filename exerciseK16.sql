SELECT DISTINCT CustomerID, Name, Address, Phone
FROM   Customer INNER JOIN
       Ordered ON Customer.CustomerID = Ordered.Customer
WHERE  AreaCode = 'A01'
  AND  OrderID IN ( SELECT OrderID
       		    FROM   ItemOrdered
		    WHERE  ProductID = 'P02'
		    UNION
		    SELECT OrderID
		    FROM   Delivery
		    WHERE  WhenDelivered IS NOT NULL 
		      AND  DeliveredBy IN ( SELECT BoyID
					    FROM   DeliveryBoy
					    WHERE  Name = 'Mike B'
					  )
       	          );
