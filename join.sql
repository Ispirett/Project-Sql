1:
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'
  
2:
SELECT DISTINCT id,stadium,team1,team2
  FROM game
 JOIN goal ON (id = matchid)
WHERE matchid = 1012

3:
SELECT player,  teamid, stadium, mdate 
  FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'GER'

4:
SELECT team1, team2, player
  FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%'

5:
SELECT player, teamid, coach, gtime
  FROM goal  JOIN eteam ON (goal.teamid = eteam.id)
 WHERE gtime<=10

6:
SELECT mdate, teamname FROM game
JOIN eteam ON (team1 = eteam.id)
WHERE   coach ='Fernando Santos';

7:
SELECT player FROM goal 
                    JOIN game ON(goal.matchid = game.id)
                     WHERE stadium = 'National Stadium, Warsaw'
                     
8:
SELECT DISTINCT player
  FROM game JOIN goal ON matchid = id 
    WHERE teamid!='GER' 
    AND (team1 = 'GER' OR team2 = 'GER')


9:
SELECT teamname, COUNT(*)  as totalgoals
  FROM eteam JOIN goal ON id=teamid
GROUP BY teamname

10:
SELECT stadium, COUNT(*) as totalgoals 
 FROM game JOIN goal ON id = goal.matchid
   GROUP BY stadium
   
11:
SELECT matchid,mdate, COUNT(*) AS goals
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid, mdate

12:
SELECT matchid , mdate ,COUNT(*) AS totalgoals
FROM game JOIN goal ON (id = goal.matchid)
WHERE teamid = 'GER'
GROUP BY matchid , mdate

13:
 SELECT mdate, team1, 
SUM(CASE WHEN teamid=team1 THEN 1   ELSE 0 
END) score1, team2, SUM(CASE WHEN teamid = team2 THEN 1 
ELSE 0 END) score2
FROM game 
LEFT JOIN goal ON id =matchid
 GROUP BY mdate, team1, 


QUIZ:
1 = 4
2 = 3
3 = 1
4 = 1
5 = 2
6 = 3
7 = 2

 
