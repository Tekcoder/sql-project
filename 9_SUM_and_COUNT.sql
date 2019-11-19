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