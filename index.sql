-- Start by getting a feel for the met table:
SELECT *
FROM met
LIMIT 10;

-- How many pieces are in the American Decorative Art collection?

SELECT 
  COUNT(DISTINCT id) AS total_num_of_pieces
FROM met;

-- Count the number of pieces where the category includes ‘celery’.
SELECT
  COUNT(DISTINCT id) AS total_num_of_pieces
FROM met
WHERE category LIKE '%celery%';

-- Find the title and medium of the oldest piece(s) in the collection.
SELECT
  date, title, medium
FROM met
WHERE date LIKE '%1600%'
LIMIT 1;

-- Not every American decoration is from the Americas… where are they are coming from? Find the top 10 countries with the most pieces in the collection.
SELECT 
  country,
  COUNT(id) AS most_pieces
FROM met
GROUP BY country
ORDER BY most_pieces DESC
LIMIT 10;

-- Find the categories HAVING more than 100 pieces.
SELECT
  category,
  COUNT(id) AS most_pieces
FROM met
GROUP BY category
HAVING COUNT(id) > 100;

-- Count the number of pieces where the medium contains ‘gold’ or ‘silver’.
SELECT
  title,
  COUNT(medium) AS num_of_gold_and_silver
FROM met
WHERE medium LIKE '%Gold%' OR medium LIKE '%Silver%'
GROUP BY title
ORDER BY 2 DESC;

