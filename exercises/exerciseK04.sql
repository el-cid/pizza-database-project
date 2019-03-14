SELECT TO_CHAR( WhenMade , 'DD/MM/YYYY' ) AS DAY, OrderID, TotalPrice, PaymentBy
From Ordered
WHERE TotalPrice < 12
ORDER BY WhenMade;
