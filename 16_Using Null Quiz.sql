-- Using Null Quiz

-- Test your understanding of the NULL value
-- teacher id 	dept 	name 	phone
-- 101 	1 	Shrivell 	2753
-- 102 	1 	Throd 	2754
-- 103 	1 	Splint 	
-- 104 		Spiregrain 	
-- 105 	2 	Cutflower 	3212
-- 106 		Deadyawn 	
-- dept id 	name
-- 1 	Computing
-- 2 	Design
-- 3 	Engineering

-- 1. Select the code which uses an outer join correctly. 

 SELECT teacher.name, dept.name FROM teacher LEFT OUTER JOIN dept ON (teacher.dept = dept.id)

--  2. Select the correct statement that shows the name of department which employs Cutflower - 

 SELECT dept.name FROM teacher JOIN dept ON (dept.id = teacher.dept) WHERE teacher.name = 'Cutflower'

--  3. Select out of following the code which uses a JOIN to show a list of all the departments and number of employed teachers 

 SELECT dept.name, COUNT(teacher.name) FROM teacher RIGHT JOIN dept ON dept.id = teacher.dept GROUP BY dept.name