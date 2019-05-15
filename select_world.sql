1:
SELECT name, continent, population FROM world

2:
SELECT name FROM world
WHERE population > 200000000 

3:
SELECT name , gdp/population as capita FROM world
WHERE population > 200000000 

4:
SELECT name, population / 1000000 as pop
FROM world
 WHERE  continent = 'South America'
 
5:
SELECT name, population FROM world 
WHERE name IN ('France', 'Germany' , 'Italy')

6:
SELECT name FROM world 
WHERE name LIKE  'United%'

7:
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

8:
SELECT name, population, area FROM world
WHERE area > 3000000 AND population < 250000000 
OR area < 3000000 AND population > 250000000 

9:
SELECT name, round(population/1000000,2) AS pop , round(gdp/1000000000,2) AS gdp
FROM world
WHERE continent = 'South America'

10:
SELECT name, round(gdp/population,-3)   As gdp
FROM world
WHERE gdp > 1000000000000
