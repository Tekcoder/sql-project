--1-  Observe the result of running this SQL command to show the name, continent and population of all countries
Answer:
SELECT name, continent, population FROM world

--2- Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros. 
Answer:
SELECT name FROM world
WHERE population > 200000000

--3- Give the name and the per capita GDP for those countries with a population of at least 200 million. 
Answer:
SELECT name, gdp/population FROM world
WHERE population > 200000000

--4- Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions. 
Answer:
SELECT name, population/1000000 FROM world 
WHERE continent = 'South America'

--5- Show the name and population for France, Germany, Italy 
Answer:
SELECT name, population FROM world
WHERE name IN ('France','Germany','Italy');

--6- Show the countries which have a name that includes the word 'United' 
Answer:
SELECT name FROM world
WHERE name LIKE '%United%';

--7- Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.

-- Show the countries that are big by area or big by population. Show name, population and area.
Answer:
SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000

--8- Exclusive OR (XOR). Show the countries that are big by area or big by population but not both. Show name, population and area.

--     Australia has a big area but a small population, it should be included.
--     Indonesia has a big population but a small area, it should be included.
--     China has a big population and big area, it should be excluded.
--     United Kingdom has a small population and a small area, it should be excluded.
Answer:
SELECT name, population, area FROM world
WHERE  area > 3000000 XOR population > 250000000 

--9- Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.
-- For South America show population in millions and GDP in billions both to 2 decimal places.
-- Millions and billions
Answer:
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world
WHERE continent = 'South America'

--10- Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000.

-- Show per-capita GDP for the trillion dollar countries to the nearest $1000
Answer:
SELECT name, ROUND(gdp/population, -3) FROM world
WHERE gdp > 1000000000000;