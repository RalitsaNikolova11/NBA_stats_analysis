-- Check to confirm table loaded correctly
SELECT *
FROM playerindex_nba_stats
LIMIT 10;

-- Rename table to make it easier to work with
RENAME TABLE playerindex_nba_stats TO stats;

-- Check for missing data
SELECT 
  SUM(PLAYER_FIRST_NAME IS NULL) AS missing_first_name,   
  SUM(TEAM_NAME IS NULL) AS missing_team,
  SUM(PTS IS NULL) AS missing_points
FROM stats;

-- Check for duplicates
SELECT PLAYER_FIRST_NAME, PLAYER_LAST_NAME, TEAM_NAME, COUNT(*) AS count    
FROM stats
GROUP BY PLAYER_FIRST_NAME, PLAYER_LAST_NAME, TEAM_NAME
HAVING COUNT(*) > 1;

-- Check if country name standardising is needed
SELECT DISTINCT COUNTRY  
FROM stats
ORDER BY COUNTRY;


