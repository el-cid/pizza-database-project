SELECT BoyID, Name, DeliveryArea, COUNT( OrderID ) AS Tasks
FROM   DeliveryBoy LEFT OUTER JOIN
       Delivery ON DeliveryBoy.BoyID = Delivery.DeliveredBy
GROUP BY BoyID, Name, DeliveryArea
HAVING COUNT( OrderID ) < 3
ORDER BY Tasks;
