-- Project 001: Overwatch Competitive Gaming Insights
-- Lesson 3: GROUP BY and aggregate functions
-- Table: match_segments
-- Dataset: simulated practice data only

-- DEMO 1: Count how many sample segments each hero has.
SELECT hero, COUNT(*) AS segments_played
FROM match_segments
GROUP BY hero
ORDER BY segments_played DESC;

-- DEMO 2: Calculate wins and losses for each hero.
SELECT
    hero,
    COUNT(*) AS matches,
    SUM(CASE WHEN result = 'Win' THEN 1 ELSE 0 END) AS wins,
    SUM(CASE WHEN result = 'Loss' THEN 1 ELSE 0 END) AS losses
FROM match_segments
GROUP BY hero
ORDER BY wins DESC;

-- DEMO 3: Calculate a win percentage for each hero.
-- 1.0 and 0.0 make the average a decimal proportion.
-- Multiplying by 100 converts it to a percentage.
SELECT
    hero,
    COUNT(*) AS matches,
    ROUND(AVG(CASE WHEN result = 'Win' THEN 1.0 ELSE 0.0 END) * 100, 1) AS win_rate_pct
FROM match_segments
GROUP BY hero
ORDER BY win_rate_pct DESC;

-- DEMO 4: Compare results by role.
SELECT
    role,
    COUNT(*) AS matches,
    SUM(CASE WHEN result = 'Win' THEN 1 ELSE 0 END) AS wins,
    ROUND(AVG(CASE WHEN result = 'Win' THEN 1.0 ELSE 0.0 END) * 100, 1) AS win_rate_pct,
    ROUND(AVG(eliminations), 1) AS avg_eliminations,
    ROUND(AVG(deaths), 1) AS avg_deaths
FROM match_segments
GROUP BY role
ORDER BY win_rate_pct DESC;

-- YOUR TURN:
-- A. Group by map_type instead of role. Which map type has the most rows?
-- B. Add average damage to the hero summary.
-- C. Filter to Competitive matches before grouping by hero.
-- D. In your own words, explain what GROUP BY changes about the result.
--
-- Data caution:
-- These are simulated practice observations, not real Overwatch stats.
-- In this first dataset, each row represents one match segment and there
-- is one segment per match. Future data may have multiple segments per match.
