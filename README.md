# Analyze Twitch Gaming Data

A SQL project analyzing Twitch streaming data to understand user behavior, popular games, viewer locations, and chat activity.

## Project Overview

This project uses two datasets provided by Twitch:
- `stream` table — Contains stream viewing data (game, channel, country, player, etc.)
- `chat` table — Contains chat room usage data

The goal is to explore the data using SQL aggregate functions, `CASE` statements, date functions, and table joins to uncover insights about Twitch users and content.

## Skills Demonstrated

- Data exploration and profiling
- Aggregate functions (`COUNT`, `GROUP BY`, `ORDER BY`)
- Conditional logic using `CASE`
- Date/time manipulation with `strftime()`
- Joining multiple tables
- Writing analytical queries with filters and grouping
- Drawing business insights from data

## Dataset

The original dataset contains ~800,000 rows. You can download the CSV files from the [Codecademy GitHub repository](https://github.com/Codecademy/datasets/tree/master/twitch).

## How to Run

1. Download the `stream.csv` and `chat.csv` files.
2. Import them into your SQL environment (SQLite, PostgreSQL, MySQL, etc.).
3. Run the queries in `queries.sql` in order.

## Files

- `queries.sql` — Contains all guided tasks + additional analytical queries
- `insights.md` — Summary of key findings and extra analysis
