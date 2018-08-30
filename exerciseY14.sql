WITH payments AS ( SELECT PaymentBy, SUM( TotalPrice ) AS TotalValue
                   FROM   Ordered
                   GROUP BY PaymentBy
                 )
SELECT ROUND( 100 * ( TotalValue / ( SELECT SUM( TotalValue ) FROM payments ) ) ) AS CPROS
FROM   payments
WHERE  PaymentBy = 'credit';
