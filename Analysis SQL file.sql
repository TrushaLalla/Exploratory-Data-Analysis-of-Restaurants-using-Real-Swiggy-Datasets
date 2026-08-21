-- Q0: How many restaurants are listed per city?
SELECT city, COUNT(*) AS total_restaurants
FROM swiggy
GROUP BY city
ORDER BY total_restaurants DESC
LIMIT 10;

-- Q1: What are the most popular cuisines across India?
SELECT cuisine, COUNT(*) AS count
FROM swiggy
GROUP BY cuisine
ORDER BY count DESC
LIMIT 10;

-- Q2: Most popular restaurant chain by average rating (chains with 5+ branches)
SELECT name, 
       COUNT(*) AS branches, 
       ROUND(AVG(rating), 2) AS avg_rating
FROM swiggy
GROUP BY name
HAVING COUNT(*) >= 5
ORDER BY avg_rating DESC
LIMIT 1;

-- Q3: Which restaurant chains have the most branches?
SELECT name, COUNT(*) AS branches
FROM swiggy
GROUP BY name
ORDER BY branches DESC
LIMIT 10;

-- Q4: Top 5 cities with highest average restaurant rating?
SELECT city,
       ROUND(AVG(CAST(rating AS FLOAT)), 2) AS avg_rating,
       COUNT(*) AS total_restaurants
FROM swiggy
WHERE rating NOT IN ('NEW', '--')
GROUP BY city
HAVING COUNT(*) > 50
ORDER BY avg_rating DESC
LIMIT 5;

--from claude new question4 for top 5
SELECT city,
       ROUND(AVG(CAST(rating AS FLOAT)), 2) AS avg_rating,
       COUNT(*) AS total_restaurants
FROM swiggy
GROUP BY city
ORDER BY avg_rating DESC
LIMIT 5;


-- Q6: Which cuisines have the highest average rating?
SELECT cuisine,
       ROUND(AVG(CAST(rating AS FLOAT)), 2) AS avg_rating,
       COUNT(*) AS restaurant_count
FROM swiggy
WHERE rating NOT IN ('NEW', '--')
GROUP BY cuisine
HAVING COUNT(*) > 100
ORDER BY avg_rating DESC
LIMIT 10;

-- Q7: Restaurants with rating above 4.5 and more than 1000 ratings
SELECT name, city, rating, rating_count, cost
FROM swiggy
WHERE CAST(rating AS FLOAT) >= 4.5
ORDER BY rating DESC
LIMIT 20;

-- Q8: Business insight — which city has best value for money?
-- (high rating, low cost)
SELECT city,
       ROUND(AVG(CAST(rating AS FLOAT)), 2) AS avg_rating,
       ROUND(AVG(CAST(REPLACE(REPLACE(cost, '₹', ''), ',', '') AS FLOAT)), 0) AS avg_cost
FROM swiggy
WHERE rating NOT IN ('NEW', '--')
GROUP BY city
HAVING COUNT(*) > 30
ORDER BY avg_rating DESC, avg_cost ASC
LIMIT 10;

--FINDINGS FILE QUESTIONS most popular cuisnines
SELECT cuisine, COUNT(*) AS total_restaurants
FROM swiggy
GROUP BY cuisine
ORDER BY total_restaurants DESC
LIMIT 10;
--cheapest and most expensive cities on avg
SELECT city,
       ROUND(AVG(CAST(REPLACE(cost, '₹', '') AS FLOAT)), 0) AS avg_cost
FROM swiggy
GROUP BY city
HAVING COUNT(*) >= 20
ORDER BY avg_cost DESC
LIMIT 10;

--do higher-rated resturants cost more(price vs rating correlation)
SELECT
  CASE
    WHEN rating >= 4.5 THEN '4.5+'
    WHEN rating >= 4.0 THEN '4.0-4.4'
    WHEN rating >= 3.5 THEN '3.5-3.9'
    ELSE 'Below 3.5'
  END AS rating_band,
  ROUND(AVG(CAST(REPLACE(cost, '₹', '') AS FLOAT)), 0) AS avg_cost,
  COUNT(*) AS total
FROM swiggy
GROUP BY rating_band
ORDER BY rating_band DESC;

--which resturants have the most ratings (most reviewed and most trusted?) Q8
SELECT name, city, rating, rating_count
FROM swiggy
WHERE rating_count = '500+ ratings'
ORDER BY rating DESC
LIMIT 10;

--how many restuarants have no ratings at all vs are actively rated?
SELECT
  SUM(CASE WHEN rating_count IN ('Too Few Ratings', '--') THEN 1 ELSE 0 END) AS unrated,
  SUM(CASE WHEN rating_count NOT IN ('Too Few Ratings', '--') THEN 1 ELSE 0 END) AS rated
FROM swiggy;

--affordable with high ratings
SELECT name, city, rating, cost
FROM swiggy
WHERE rating >= 4.5
ORDER BY CAST(REPLACE(cost, '₹', '') AS FLOAT) ASC
LIMIT 10;

