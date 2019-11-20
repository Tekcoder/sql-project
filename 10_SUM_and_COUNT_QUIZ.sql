-- 1. Select the statement that shows the sum of population of all countries in 'Europe' 

 SELECT SUM(population) FROM bbc WHERE region = 'Europe'

-- 2. Select the statement that shows the number of countries with population smaller than 150000

 SELECT COUNT(name) FROM bbc WHERE population < 150000

--  3. Select the list of core SQL aggregate functions 

AVG(), COUNT(), MAX(), MIN(), SUM()

-- 4. Select the result that would be obtained from the following code:

--  SELECT region, SUM(area)
--    FROM bbc 
--   WHERE SUM(area) > 15000000 
--   GROUP BY region

No result due to invalid use of the WHERE function



