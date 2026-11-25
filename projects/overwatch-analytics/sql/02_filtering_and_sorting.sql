-- Project 001: Overwatch Competitive Gaming Insights
-- Lesson 2: Filtering and sorting
-- Table: match_segments
-- Dataset: simulated practice data only

-- DEMO 1: Keep only the wins.
SELECT match_id, hero, map, result
FROM match_segments
WHERE result = 'Win';

-- DEMO 2: Show the highest-damage match segments first.
SELECT match_id, hero, damage
FROM match_segments
ORDER BY damage DESC;

-- DEMO 3: Combine a filter with sorting.
SELECT match_id, hero, map, minutes_played
FROM match_segments
WHERE result = 'Win'
ORDER BY minutes_played DESC;

-- YOUR TURN:
-- A. Change 'Win' to 'Loss'. What changes?
-- B. Change DESC to ASC. What changes?
-- C. Add queue to the SELECT list, then filter to Competitive wins only.
-- D. Keep Competitive wins only, and sort by damage from highest to lowest.
--
-- After each query, ask yourself:
-- 1. Which rows are included?
-- 2. How are the included rows ordered?
-- 3. Did the number of returned rows change, or only their order?
