-- 1-List each country name where the population is larger than that of 'Russia'.

-- world(name, continent, area, population, gdp)

Answer:
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')