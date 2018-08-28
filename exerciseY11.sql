SELECT BoyID, Name, COUNT( OrderID ) AS TASKS
FROM   Delivery RIGHT OUTER JOIN
       DeliveryBoy ON Delivery.DeliveredBy = DeliveryBoy.BoyID
GROUP BY BoyID, Name
ORDER BY TASKS;
