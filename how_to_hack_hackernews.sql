 SELECT title, score FROM hacker_news ORDER BY score DESC LIMIT 5;

 SELECT SUM(score) FROM hacker_news;
 -- ANSWER: 6366

 SELECT user, SUM(score) FROM hacker_news GROUP BY user HAVING SUM(score) > 200;

 SELECT (517 + 309 + 304 + 282) / 6366.0;

 SELECT COUNT(*) FROM hacker_news WHERE url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';

 --ANSWER: 3 times --

SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'OTHER'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 2
LIMIT 20;

SELECT strftime('%H', timestamp) AS hours, ROUND(AVG(score)) AS average, COUNT(*) AS counts FROM hacker_news WHERE hours IS NOT NULL GROUP BY strftime('%H', timestamp) ORDER BY average DESC;
















