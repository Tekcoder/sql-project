-- 1. Select the statement that shows the sum of population of all countries in 'Europe' 

 SELECT SUM(population) FROM bbc WHERE region = 'Europe'

-- 2. Select the statement that shows the number of countries with population smaller than 150000

 SELECT COUNT(name) FROM bbc WHERE population < 150000


