-- yr 	subject 	winner
-- 1960 	Chemistry 	Willard F. Libby
-- 1960 	Literature 	Saint-John Perse
-- 1960 	Medicine 	Sir Frank Macfarlane Burnet
-- 1960 	Medicine 	Peter Medawar
-- 1960 	Physics 	Donald A. Glaser
-- 1960 	Peace 	Albert Lutuli
-- ...
-- 1. Pick the code which shows the name of winner's names beginning with C and ending in n 

SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'

--  2. Select the code that shows how many Chemistry awards were given between 1950 and 1960 
Answer:
SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960