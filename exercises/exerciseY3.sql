SELECT ROUND( 100 * ( COUNT(Email) / ( COUNT(*) * 1.0 ) ) )  AS EPROS,  
       ROUND( 100 * ( COUNT(Phone) / ( COUNT(*) * 1.0 ) ) )  AS PPROS
FROM   Customer;
