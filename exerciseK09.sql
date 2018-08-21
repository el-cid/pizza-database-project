SELECT Ordered.OrderID,
       EXTRACT ( EPOCH FROM ( Delivery.WhenDelivered - Ordered.WhenMade       ) )::INTEGER/60 AS DELAY_ORD,
       EXTRACT ( EPOCH FROM ( Delivery.WhenDelivered - Delivery.WhenAssigned  ) )::INTEGER/60 AS DELAY_ASSN
FROM Ordered INNER JOIN
     Delivery ON Ordered.OrderID = Delivery.OrderID
WHERE WhenDelivered IS NOT NULL
ORDER BY Delay_ORD DESC;
