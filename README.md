# Analyze Twitch Gaming Data

A SQL project exploring Twitch streaming behavior using real user data from the `stream` and `chat` tables.

## Project Overview

This project analyzes Twitch user activity by examining stream viewing data and chat room usage. The goal is to understand popular games, viewer geography, device preferences, and engagement patterns using SQL.

The project covers data exploration, aggregation, conditional logic, date manipulation, and joining multiple tables.

## Skills Demonstrated

- Writing complex SQL queries with `GROUP BY`, `ORDER BY`, and aggregate functions
- Using `CASE` statements for data categorization
- Working with datetime values using `strftime()`
- Joining tables on common keys (`device_id`)
- Analyzing real-world datasets to extract business insights
- Building reproducible data pipelines (Python + SQLite)

## Dataset

This project uses two datasets provided by Twitch:
- `stream` — Contains viewing data (game, channel, country, player, timestamp, etc.)
- `chat` — Contains chat activity data

**Note:** The raw CSV files are **not included** in this repository due to their large size. You can download them from the [Codecademy Twitch dataset](https://github.com/Codecademy/datasets/tree/master/twitch).

## Project Structure

```text
twitch-gaming-data-analysis/
├── README.md
├── queries.sql          # Main SQL analysis file
├── insights.md          # Summary of key findings
├── load_data.py         # Python script to load CSVs into SQLite
├── .gitignore
└── twitch.db            # Generated locally (not committed)
```

## Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/senseirandystl/twitch-gaming-data-analysis.git
cd twitch-gaming-data-analysis
```

### 2. Create a virtual environment and install dependencies
Windows:
python -m venv .venv
.\.venv\Scripts\Activate.ps1 
pip install pandas

### 3. Download the data
Download stream.csv and chat.csv from the [Codecademy Twitch dataset](https://github.com/Codecademy/datasets/tree/master/twitch) and place them in the project root.

### 4. Load the data into SQLite
Run the Python script to create the database:
python load_data.py
This will generate a twitch.db file locally.

## How to Run Queries
You can run the queries in queries.sql using any of the following methods:
- DB Browser for SQLite (easiest)
- VS Code + SQLite extension
- Command line: sqlite3 twitch.db
Open queries.sql and run the queries in order. The file is organized into the original guided tasks plus additional analysis.

## Key Insights
See insights.md for a summary of the main findings from the analysis.

---

**About Me**  
Randall James | Data Coordinator / Data Analyst / Project Manager  
St. Louis, MO (O'Fallon area) | Open to remote, hybrid, or on-site within ~30 min commute  
[LinkedIn](https://www.linkedin.com/in/randall-james-stl) | [GitHub](https://github.com/senseirandystl) | randalljames34@pm.me

*This project was created as part of my professional portfolio to demonstrate data analysis capabilities.*
