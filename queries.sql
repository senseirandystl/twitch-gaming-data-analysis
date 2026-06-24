-- ============================================
-- Analyze Twitch Gaming Data
-- ============================================

-- Task 1: Get a feel for both tables
SELECT * FROM stream LIMIT 20;
SELECT * FROM chat LIMIT 20;

-- Task 2: Unique games in stream
SELECT DISTINCT game FROM stream;

-- Task 3: Unique channels in stream
SELECT DISTINCT channel FROM stream;

-- Task 4: Most popular games (by view count)
SELECT 
    game, 
    COUNT(*) AS viewers
FROM stream
GROUP BY game
ORDER BY viewers DESC;

-- Task 5: League of Legends viewers by country
SELECT 
    country, 
    COUNT(*) AS lol_viewers
FROM stream
WHERE game = 'League of Legends'
GROUP BY country
ORDER BY lol_viewers DESC;

-- Task 6: Viewers by player (source)
SELECT 
    player, 
    COUNT(*) AS viewers
FROM stream
GROUP BY player
ORDER BY viewers DESC;

-- Task 7: Categorize games into genres using CASE
SELECT 
    game,
    CASE
        WHEN game = 'League of Legends' THEN 'MOBA'
        WHEN game = 'Dota 2' THEN 'MOBA'
        WHEN game = 'Heroes of the Storm' THEN 'MOBA'
        WHEN game = 'Counter-Strike: Global Offensive' THEN 'FPS'
        WHEN game = 'DayZ' THEN 'Survival'
        WHEN game = 'ARK: Survival Evolved' THEN 'Survival'
        ELSE 'Other'
    END AS genre,
    COUNT(*) AS viewers
FROM stream
GROUP BY game
ORDER BY viewers DESC;

-- Task 8 & 9: Understanding the time column
SELECT time, strftime('%H', time) AS hour
FROM stream
LIMIT 20;

-- Task 10: View count by hour of day (filtered by country)
-- Change 'US' to your country of interest
SELECT 
    strftime('%H', time) AS hour,
    COUNT(*) AS views
FROM stream
WHERE country = 'US'
GROUP BY hour
ORDER BY hour;

-- Task 11: Join stream and chat tables
SELECT *
FROM stream
JOIN chat
    ON stream.device_id = chat.device_id
LIMIT 20;

-- ============================================
-- Additional Analysis (Beyond Guided Tasks)
-- ============================================

-- Extra 1: Top channels overall
SELECT 
    channel, 
    COUNT(*) AS total_views
FROM stream
GROUP BY channel
ORDER BY total_views DESC
LIMIT 10;

-- Extra 2: Average viewers per game (for games with significant viewership)
SELECT 
    game,
    ROUND(AVG(viewers), 2) AS avg_viewers
FROM (
    SELECT game, COUNT(*) AS viewers
    FROM stream
    GROUP BY game
) AS game_views
WHERE viewers > 1000
GROUP BY game
ORDER BY avg_viewers DESC;

-- Extra 3: Most active chat users (by login)
SELECT 
    login, 
    COUNT(*) AS messages_sent
FROM chat
GROUP BY login
ORDER BY messages_sent DESC
LIMIT 10;

-- Extra 4: Games with highest chat-to-view ratio (engagement)
WITH stream_counts AS (
    SELECT game, COUNT(*) AS stream_views
    FROM stream
    GROUP BY game
),
chat_counts AS (
    SELECT game, COUNT(*) AS chat_messages
    FROM chat
    GROUP BY game
)
SELECT 
    s.game,
    s.stream_views,
    c.chat_messages,
    ROUND(CAST(c.chat_messages AS FLOAT) / s.stream_views, 2) AS chat_per_view
FROM stream_counts s
JOIN chat_counts c ON s.game = c.game
WHERE s.stream_views > 500
ORDER BY chat_per_view DESC;
