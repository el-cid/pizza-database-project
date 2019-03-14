SELECT AreaCode, SUM( TotalPrice ) AS TOTAL
FROM   Ordered INNER JOIN
       Customer ON Ordered.Customer = Customer.CustomerID
GROUP BY AreaCode
ORDER BY TOTAL DESC;
