1:
SELECT COUNT(name) FROM  stops


2:
SELECT id FROM stops
WHERE  name =  'Craiglockhart'

3:
SELECT id, name FROM stops  
       JOIN route ON id=stop
  WHERE num = '4' AND company = 'LRT'
  
4:
SELECT company, num, COUNT(*)
  FROM route WHERE   stop  IN(149, 53)
  GROUP BY company, num
  HAVING COUNT(*) = 2
  
5:
SELECT x.company, y.num, x.stop, y.stop
  FROM route x 
  JOIN route y ON (x.company=y.company AND x.num=y.num)
  WHERE x.stop=53 AND y.stop=149
  
6:
SELECT a.company, a.num, stopa.name, stopb.name
  FROM route a 
  JOIN route b ON
 (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
  WHERE stopa.name='Craiglockhart' 
   AND stopb.name='London Road'
   
 7:
 SELECT x.company, x.num
  FROM route x 
  JOIN route y ON(x.company=y.company AND x.num=y.num)
  WHERE x.stop = 115 AND y.stop = 137
  GROUP BY x.company, x.num

8:
SELECT x.company, x.num
  FROM route x JOIN route y ON 
   x.company = y.company AND x.num = y.num
        JOIN stops stopa ON stopa.id = x.stop
        JOIN stops stopb ON stopb.id = y.stop
        WHERE stopa.name = 'Craiglockhart' AND stopb.name = 'Tollcross'
        GROUP BY x.company, x.num
9:
SELECT stopb.name, x.company, x.num
  FROM route x 
  INNER JOIN route y ON
  (x.company = y.company AND x.num = y.num)
  INNER JOIN stops stopa ON x.stop = stopa.id 
  INNER JOIN stops stopb ON y.stop = stopb.id
  WHERE x.company = 'LRT' AND stopa.name = 'Craiglockhart'
  
10:
SELECT a.num, a.company, d.name AS stops, b.num, b.company
FROM route a 
        JOIN route b ON (a.stop = b.stop)
        JOIN stops d 
ON (d.id = a.stop)
WHERE a.num != b.num
      AND a.company IN (SELECT DISTINCT c.company FROM route c
                   JOIN stops route ON (c.stop = (SELECT id FROM stops route WHERE name = 'Craiglockhart'))
                   WHERE c.num = a.num)
       AND b.company IN (SELECT DISTINCT e.company FROM route e
                   JOIN stops r ON (e.stop = (SELECT id FROM stops r WHERE name = 'Lochend'))
                   WHERE e.num = b.num);
                                    
                                    
Quiz 
 1: 3
 2: 5
 3: 4
