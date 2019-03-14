SELECT AreaCode, Name
FROM Customer
WHERE Phone IS NULL
ORDER BY AreaCode, Name;
