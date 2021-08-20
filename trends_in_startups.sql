SELECT * FROM startups;
-- ANSWER: 10

SELECT COUNT(*) FROM startups;
-- ANSWER: 70

SELECT SUM(valuation) AS value FROM startups;
-- ANSWER: 974455790000

SELECT MAX(raised) AS highest_amount FROM startups;
-- ANSWER: 11500000000

SELECT MAX(raised) FROM startups WHERE stage='Seed';
-- ANSWER: 1800000

SELECT MIN(founded) FROM startups; 
-- ANSWER: 1994

SELECT AVG(valuation), category FROM startups GROUP BY category;

SELECT ROUND(AVG(valuation), 2) FROM startups GROUP BY category;

SELECT category, COUNT(name) FROM startups GROUP BY category ORDER BY COUNT(name) DESC;

SELECT category, COUNT(name) FROM startups GROUP BY category HAVING COUNT(name) > 3 ORDER BY COUNT(name) DESC;

SELECT AVG(employees), location FROM startups GROUP BY location ORDER BY AVG(employees) DESC;


SELECT AVG(employees), location FROM startups GROUP BY location HAVING AVG(employees) > 500 ORDER BY AVG(employees) DESC;














