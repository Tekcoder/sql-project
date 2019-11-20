-- 1. Select the statement which lists the unfortunate directors of the movies which have caused financial loses (gross < budget) 

SELECT name
  FROM actor INNER JOIN movie ON actor.id = director
 WHERE gross < budget

--  2. Select the correct example of JOINing three tables 

SELECT *
  FROM actor JOIN casting ON actor.id = actorid
  JOIN movie ON movie.id = movieid

  -- 3. Select the statement that shows the list of actors called 'John' by order of number of movies in which they acted 

  SELECT name, COUNT(movieid)
  FROM casting JOIN actor ON actorid=actor.id
 WHERE name LIKE 'John %'
 GROUP BY name ORDER BY 2 DESC