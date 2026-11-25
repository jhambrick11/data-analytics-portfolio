# Project 001 — Overwatch Competitive Gaming Insights

## Project goal
Build an interactive analytics project that explores personal match performance, hero comparisons, and broader competitive trends in Overwatch.

The long-term goal is a clear, filterable dashboard that helps answer questions such as:
- Which heroes do I perform best with?
- How do my results vary by map and game mode?
- Which performance measures tend to move together?
- How do my personal patterns compare with broader competitive trends?

## Current stage: Version 0.1 — SQL foundations

This first version is deliberately small. It uses a practice dataset so we can learn the analysis workflow before connecting any external data.

### Important data note
**Every row in `data/sample_matches.csv` is fictional, simulated practice data.** It is not a real player's match history and must not be presented as real Overwatch performance.

Each row represents one example hero-play segment from a match. The sample begins with one segment per match to keep the first SQL exercises straightforward. Later, a match can have multiple rows if more than one hero was played.

## Planned tools
- SQL for querying and analyzing match data
- Excel / Power BI for cleaning, exploration, and interactive visualization
- Python later for repeatable data preparation and automation
- GitHub for version history and project documentation

## Project roadmap
1. Inspect the sample data and understand its columns.
2. Import the CSV into a local SQLite database.
3. Write basic SQL queries: SELECT, WHERE, ORDER BY, and GROUP BY.
4. Explore performance by hero, map, role, and result.
5. Create a first Power BI dashboard.
6. Replace or supplement practice data with clearly sourced real data.
7. Document insights, limitations, and future improvements.

## Data dictionary

| Column | Meaning |
|---|---|
| `match_id` | Sample match identifier |
| `played_on` | Fictional date used for practice |
| `queue` | Competitive or Quick Play |
| `map` | Map name |
| `map_type` | Control, Escort, Hybrid, Push, or Flashpoint |
| `hero` | Hero represented by this sample segment |
| `role` | Tank, Damage, or Support |
| `result` | Match result: Win or Loss |
| `minutes_played` | Minutes represented by the sample segment |
| `eliminations` | Simulated eliminations |
| `deaths` | Simulated deaths |
| `assists` | Simulated assists |
| `damage` | Simulated damage |
| `healing` | Simulated healing |
| `mitigation` | Simulated damage mitigation |
| `data_source` | Explicit label identifying the rows as simulated |

## Data integrity rules
- Never mix simulated and real observations without a clear source/type field.
- Record where real data came from and when it was collected.
- Do not commit account credentials, API keys, or private player identifiers to GitHub.
- Treat third-party API availability and coverage as limitations, not guarantees.

## First learning objective
Load the CSV as a table named `match_segments`, then inspect it with:

```sql
SELECT match_id, hero, result
FROM match_segments
LIMIT 5;
```

Change the query, observe the result, and explain what each line does in your own words.
