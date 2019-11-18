-- name 	continent 	area 	population 	gdp
-- Afghanistan 	South Asia 	652225 	26000000 	
-- Albania 	Europe 	28728 	3200000 	6656000000
-- Algeria 	Middle East 	2400000 	32900000 	75012000000
-- Andorra 	Europe 	468 	64000 	
-- Brazil 	South America 	8550000 	182800000 	564852000000
-- Colombia 	South America 	1140000 	45600000 	
-- Nauru 	Asia-Pacific 	21 	9900 	
-- Uzbekistan 	Central Asia 	447000 	26000000 	

-- 1. Select the code which gives the name of countries beginning with U 
Answer:
SELECT name
  FROM world
 WHERE name LIKE 'U%'

--  2. Select the code which shows just the population of United Kingdom? 

Answer:
SELECT population
  FROM world
 WHERE name = 'United Kingdom'

--  3. Select the answer which shows the problem with this SQL code - the intended result should be the continent of France: 

Answer:
'name' should be name