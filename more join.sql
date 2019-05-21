
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

9:
SELECT DISTINCT title FROM movie JOIN 
casting ON id = casting.movieid 
WHERE actorid = (SELECT id FROM actor 
                                WHERE name = 'Harrison Ford'
                                AND ord != 1)
 10:    
 SELECT title, name FROM movie AS m JOIN
casting AS c ON m.id = c.movieid
JOIN actor ON actorid = actor.id

WHERE  yr = 1962  AND ord = 1

11:
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
where name='John Travolta'
GROUP BY yr
HAVING COUNT(title)=(SELECT MAX(c) FROM
(SELECT yr,COUNT(title) AS c FROM
   movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
 where name='John Travolta'
 GROUP BY yr) AS t
)

12:
SELECT title, name 
      FROM movie JOIN casting ON (movieid = movie.id
                                                              AND ord = 1)
                              JOIN actor ON  ( actorid = actor.id)
WHERE movie.id IN(
               SELECT movieid FROM casting
                 WHERE actorid IN (
                          SELECT id FROM actor 
                          WHERE name='Julie Andrews'))
                       
13:
  SELECT name FROM actor
  JOIN casting ON
            actorid = actor.id
  JOIN movie ON 
            movieid = movie.id
            WHERE ord = 1
            GROUP BY name
            HAVING COUNT
            (movieid) >= 30

 14:
    SELECT title, COUNT(name) as actors FROM movie
            JOIN casting ON
                       ( movie.id = movieid )
            JOIN actor ON
                        (actorid = actor.id)
WHERE yr = 1978 
       GROUP BY title
       ORDER BY actors DESC, title ASC
                  
  15:
      SELECT  name FROM casting
          JOIN actor ON actor.id = casting.actorid
           WHERE movieid IN (
           SELECT movieid FROM casting
           WHERE actorid = (
           SELECT id
            FROM actor
              WHERE name= 'Art Garfunkel'))
               AND name != 'Art Garfunkel'    
            
   
 Quiz
            
 1 = 3
 2 = 5           
 3 = 3
 4 = 2          
 5 = 4
 6 = 3
 7 = 3          
