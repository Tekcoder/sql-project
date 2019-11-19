-- name 	region 	area 	population 	gdp
-- Afghanistan 	South Asia 	652225 	26000000 	
-- Albania 	Europe 	28728 	3200000 	6656000000
-- Algeria 	Middle East 	2400000 	32900000 	75012000000
-- Andorra 	Europe 	468 	64000 	
-- Bangladesh 	South Asia 	143998 	152600000 	67144000000
-- United Kingdom 	Europe 	242514 	59600000 	2022824000000

-- 1. Select the code that shows the name, region and population of the smallest country in each region 

Answer:
 SELECT region, name, population FROM bbc x WHERE population <= ALL (SELECT population FROM bbc y WHERE y.region=x.region AND population>0)

--  2. Select the code that shows the countries belonging to regions with all populations over 50000 
 SELECT name,region,population FROM bbc x WHERE 50000 < ALL (SELECT population FROM bbc y WHERE x.region=y.region AND y.population>0)

--  3. Select the code that shows the countries with a less than a third of the population of the countries around it

SELECT name, region FROM bbc x
 WHERE population < ALL (SELECT population/3 FROM bbc y WHERE y.region = x.region AND y.name != x.name)


-- 4. Select the result that would be obtained from the following code:

-- SELECT name FROM bbc
--  WHERE population >
--        (SELECT population
--           FROM bbc
--          WHERE name='United Kingdom')
--    AND region IN
--        (SELECT region
--           FROM bbc
--          WHERE name = 'United Kingdom')

France
Germany
Russia
Turkey
