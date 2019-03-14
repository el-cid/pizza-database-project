SELECT CustomerID, Name, Address
FROM Customer
WHERE AreaCode = 'A03' AND PaymentCategory = 'credit'
ORDER BY Name;
