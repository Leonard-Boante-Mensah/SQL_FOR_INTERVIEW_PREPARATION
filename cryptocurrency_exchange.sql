SELECT * FROM transactions;

SELECT SUM(money_in)  FROM transactions;

SELECT SUM(money_out) FROM transactions;

SELECT COUNT(money_in) FROM transactions;
 
SELECT COUNT(money_in) FROM transactions WHERE currency = 'BIT';

SELECT MAX(money_in) FROM transactions;
 
SELECT MAX(money_out) FROM transactions;

SELECT AVG(money_in) FROM transactions WHERE currency = 'ETH';

SELECT date, ROUND(AVG(money_in), 2) AS Average_Money_In,  ROUND(AVG(money_out), 0) AS Average_Money_Out FROM transactions GROUP BY date;