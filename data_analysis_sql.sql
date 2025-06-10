-- Top 10 players by points
SELECT PLAYER_FIRST_NAME, PLAYER_LAST_NAME, TEAM_NAME, PTS   
FROM stats
ORDER BY PTS DESC
LIMIT 10;

-- Player count by country
SELECT COUNTRY, COUNT(*) AS num_players  
FROM stats
GROUP BY COUNTRY
ORDER BY num_players DESC;

-- Avg points by position
SELECT POSITION, ROUND(AVG(PTS), 2) AS avg_points  
FROM stats
GROUP BY POSITION
ORDER BY avg_points DESC;

-- Highest assists per team
SELECT TEAM_NAME, ROUND(AVG(AST), 2) AS avg_assists 
FROM stats
GROUP BY TEAM_NAME
ORDER BY avg_assists DESC;