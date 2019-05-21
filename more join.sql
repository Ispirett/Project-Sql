
1:
SELECT id, title
 FROM movie
 WHERE yr=1962
 
 2:
 SELECT yr from movie WHERE title =  'Citizen Kane'
 
 3:
 SELECT id, title, yr FROM movie
 WHERE title LIKE '%Star Trek%'
 ORDER BY yr 

4:
SELECT id from actor WHERE name ='Glenn Close' 

5:
SELECT id from movie WHERE title =  'Casablanca'

6:
SELECT DISTINCT name FROM  actor 
JOIN casting ON actor.id = actorid
WHERE movieid= 11768 

7:
SELECT  name FROM  actor 
JOIN casting ON actor.id = actorid
WHERE movieid = (SELECT id FROM movie
                               WHERE  title = 'Alien');
                               
8:
SELECT title FROM movie JOIN casting
ON id = movieid
WHERE actorid = (SELECT id  FROM actor 
                                WHERE name = 'Harrison Ford' )

