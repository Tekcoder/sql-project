-- JOIN Quiz

-- JOIN quiz
-- game id 	mdate 	stadium 	team1 	team2
-- 1001 	8 June 2012 	National Stadium, Warsaw 	POL 	GRE
-- 1002 	8 June 2012 	Stadion Miejski (Wroclaw) 	RUS 	CZE
-- 1003 	12 June 2012 	Stadion Miejski (Wroclaw) 	GRE 	CZE
-- 1004 	12 June 2012 	National Stadium, Warsaw 	POL 	RUS
-- ...
-- goal matchid 	teamid 	player 	gtime
-- 1001 	POL 	Robert Lewandowski 	17
-- 1001 	GRE 	Dimitris Salpingidis 	51
-- 1002 	RUS 	Alan Dzagoev 	15
-- 1001 	RUS 	Roman Pavlyuchenko 	82
-- ...
-- eteam id 	teamname 	coach
-- POL 	Poland 	Franciszek Smuda
-- RUS 	Russia 	Dick Advocaat
-- CZE 	Czech Republic 	Michal Bilek
-- GRE 	Greece 	Fernando Santos
-- ...
-- 1. You want to find the stadium where player 'Dimitris Salpingidis' scored. Select the JOIN condition to use: 

 game  JOIN goal ON (id=matchid)

--  2. You JOIN the tables goal and eteam in an SQL statement. Indicate the list of column names that may be used in the SELECT line: 

 matchid, teamid, player, gtime, id, teamname, coach

--  3. Select the code which shows players, their team and the amount of goals they scored against Greece(GRE).

SELECT player, teamid, COUNT(*)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = "GRE" OR team2 = "GRE")
   AND teamid != 'GRE'
 GROUP BY player, teamid