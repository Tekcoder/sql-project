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