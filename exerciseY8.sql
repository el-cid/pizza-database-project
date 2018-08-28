SELECT CustomerID, Name, COUNT( DISTINCT OrderID ) AS ORDS
FROM   Customer INNER JOIN
       Ordered ON Customer.CustomerID = Ordered.Customer INNER JOIN
       ItemOrdered USING( OrderID )
GROUP BY CustomerID, Name
ORDER BY ORDS DESC;
