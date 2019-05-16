1:
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
      
2:
SELECT name FROM world 
WHERE continent = 'Europe' AND gdp/population > 
       (SELECT gdp/population FROM world
        WHERE name = 'United Kingdom' )
        
3:
SELECT name, continent
  FROM world
   WHERE continent IN (
   SELECT continent FROM world WHERE 
   name  = 'Argentina'   OR name  = 'Australia'
   ) ORDER BY name;

4:
SELECT name , population  FROM world
WHERE population > (
       SELECT population FROM world
       WHERE  name = 'Canada') AND population <  ( SELECT population FROM world
      WHERE  name = 'Poland');

5:
SELECT name, 
   CONCAT(ROUND(population * 100 / (SELECT population
    FROM world
    WHERE name = 'Germany')),
                    '%')
                    FROM world
    WHERE continent = 'Europe';

6:
SELECT name FROM world
 WHERE gdp  > (
      SELECT MAX(gdp) FROM world
      WHERE continent = 'Europe'
)

7:
SELECT continent, name, area FROM world x
  WHERE area  =
    (SELECT MAX(area) FROM world y
        WHERE y.continent = x.continent
        ) 
          
          
