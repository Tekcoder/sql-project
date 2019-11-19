-- Total world population
-- 1.

-- Show the total population of the world.

-- world(name, continent, area, population, gdp)

SELECT SUM(population)
FROM world

-- List of continents
-- 2.

-- List all the continents - just once each.

SELECT DISTINCT continent
FROM world

-- GDP of Africa
-- 3.

-- Give the total GDP of Africa 

SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa'

-- Count the big countries
-- 4.

-- How many countries have an area of at least 1000000 
SELECT COUNT(name) 
FROM world
WHERE area >= 1000000 

-- Baltic states population
-- 5.

-- What is the total population of ('Estonia', 'Latvia', 'Lithuania') 

SELECT SUM(population)
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania') 