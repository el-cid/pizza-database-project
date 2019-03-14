SELECT CustomerID, Name, SUM(TotalPrice) AS Value
FROM   Customer INNER JOIN
       Ordered ON Customer.CustomerID = Ordered.Customer
GROUP BY CustomerID, Name
HAVING SUM(TotalPrice) > 20.0
ORDER BY CustomerID;
