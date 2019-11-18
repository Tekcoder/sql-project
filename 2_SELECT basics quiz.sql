--1- Select the code which produces this table
-- name	population
-- Bahrain	1234571
-- Swaziland	1220000
-- Timor-Leste	1066409
Answer:
SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000

--  2. Pick the result you would obtain from this code:

--       SELECT name, population
--       FROM world
--       WHERE name LIKE "Al%"
Answer:
-- Albania 3200000
-- Algeria 32900000

-- 3. Select the code which shows the countries that end in A or L 

Answer:
SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'
