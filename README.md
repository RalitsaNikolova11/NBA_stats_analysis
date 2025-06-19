# 🏀 NBA Player Stats Analysis 🏀
Using SQL and Excel to analyse NBA player statistics and visualise the findings in a dashboard


## Overview
The project analyses the NBA Players Database using MySQL for cleaning and analysis, and Excel for visualisation.
The goal is to explore player performance, country representation, positional trends, and team assists.

## Tools Used
- MySQL for cleaning and analysis
- Excel for visualisation and dashboard creation


## Cleaning Steps
- Checked for missing values
- Checked for duplicates
- Checked if country names are standardised

## Analysis Queries
1. Top 10 players by points

SELECT PLAYER_FIRST_NAME, PLAYER_LAST_NAME, TEAM_NAME, PTS  
FROM stats  
ORDER BY PTS DESC  
LIMIT 10;  

2. Player count by country

SELECT COUNTRY, COUNT(*) AS num_players    
FROM stats  
WHERE COUNTRY != 'USA'  
GROUP BY COUNTRY  
ORDER BY num_players DESC;   

3. Average points by position

SELECT POSITION, ROUND(AVG(PTS), 2) AS avg_points    
FROM stats  
GROUP BY POSITION  
ORDER BY avg_points DESC;  

4. Highest assists per team

SELECT TEAM_NAME, ROUND(AVG(AST), 2) AS avg_assists   
FROM stats  
GROUP BY TEAM_NAME  
ORDER BY avg_assists DESC;  


## Excel Dashboard
The dashboards consists of 4 key visualisations:

- Top 10 players by points  
- Number of foreign players by country  
- Average points by position  
- Top 10 teams with the highest assists  

## Dashboard Preview

![Screenshot 2025-06-10 154833](https://github.com/user-attachments/assets/80c36b4a-d346-4071-a7d7-5db010ce3448)

## Key Insights
- Giannis Antetokounmpo stands out as the highest-scoring player in the dataset
- Nigeria has produced the highest number of international players
- Forward Guard players have the highest average points per player among all positions, followed by other Forward positions
- Hornets lead in average player assists, with a significant margin over other teams

## Dataset Information

**Source:** [NBA Players Database (via Kaggle)](https://www.kaggle.com/datasets/unsdsn/world-happiness/data)  
**Data Format:** CSV  
**Key Columns:**   
- PLAYER_FIRST_NAME, PLAYER_LAST_NAME, POSITION, COUNTRY
- PTS, AST


