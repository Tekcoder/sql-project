-- 1. Select the statement which lists the unfortunate directors of the movies which have caused financial loses (gross < budget) 

SELECT name
  FROM actor INNER JOIN movie ON actor.id = director
 WHERE gross < budget