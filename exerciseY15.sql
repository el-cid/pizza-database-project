SELECT  ObjectName, ROUND( 100 * ( SUM(extras)::DECIMAL / SUM(amount) ) ) AS EPROS
FROM (  SELECT  ObjectName, amount, CASE 
                                        WHEN DistinctAddOn.OrderID IS NOT NULL THEN Amount                                                          
                                        ELSE 0 
                                    END AS extras
        FROM   ItemOrdered INNER JOIN
               ObjectName ON ItemOrdered.ProductID = ObjectName.ObjectID AND Language = 'english' LEFT OUTER JOIN
               ( SELECT DISTINCT OrderID, ItemNo
                 FROM   AddOn
               ) AS DistinctAddOn USING ( OrderID , ItemNo )
    )   AS ProductCount
GROUP BY ObjectName
HAVING SUM( extras  ) > 0 
ORDER BY EPROS DESC;
