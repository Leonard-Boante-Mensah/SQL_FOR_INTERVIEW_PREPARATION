 SELECT * FROM met LIMIT 10;

 SELECT COUNT(*) FROM met;

SELECT COUNT(*) FROM met WHERE category LIKE '%celery%';

SELECT MIN(date) FROM met;

SELECT date, title, medium
FROM met
WHERE date LIKE '%1600%';

SELECT country, COUNT(*) FROM met WHERE country IS NOT NULL GROUP BY country ORDER BY COUNT(*) DESC LIMIT 10;

SELECT category, COUNT(id) AS pieces FROM met GROUP BY category HAVING pieces > 100;

SELECT CASE
   WHEN medium LIKE '%gold%'   THEN 'Gold'
   WHEN medium LIKE '%silver%' THEN 'Silver'
   ELSE NULL
  END AS 'Bling',
  COUNT(*)
FROM met
WHERE Bling IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;