# Key Insights from Twitch Gaming Data Analysis

This document summarizes the main findings from analyzing Twitch streaming and chat data using SQL.

## 1. Game Popularity

- **League of Legends** is by far the most viewed game, with significantly higher viewership than any other title.
- Other notable games include **Dota 2**, **Counter-Strike: Global Offensive**, and **DayZ**.
- When games are grouped by genre using `CASE` statements, **MOBA** games (League of Legends, Dota 2, Heroes of the Storm) dominate overall viewership.

## 2. Viewer Geography (League of Legends)

- The **United States** has the highest number of League of Legends viewers by a wide margin.
- Other strong regions include **Germany**, **Canada**, and the **United Kingdom**.
- This highlights the importance of English-speaking and European markets for major esports titles like LoL.

## 3. Device & Player Preferences

- The vast majority of users watch streams via **site** (desktop browser).
- Mobile platforms (iPhone and Android) represent a smaller but still meaningful share of viewership.

## 4. Time-Based Viewing Patterns

- Viewership shows a clear daily pattern, with activity increasing throughout the day and peaking during **evening hours** (roughly 6 PM – 11 PM in the US timezone).
- This aligns with typical after-work leisure streaming behavior.

## 5. Chat Engagement & Community Activity

- Some games exhibit significantly higher chat activity relative to their view count.
- This suggests that certain communities are more interactive and engaged in live chat than others.
- High chat-to-view ratios can indicate stronger community health and retention.

## 6. Additional Observations

- A relatively small number of channels capture a large portion of total views.
- There is noticeable overlap between popular games and high chat engagement.
- The data reveals clear patterns in both content consumption and user interaction that could be useful for platform recommendations or content strategy.

## Conclusion

This analysis demonstrates how SQL can be used to derive meaningful insights from large streaming datasets. The combination of aggregation, conditional logic (`CASE`), date functions (`strftime()`), and table joins provides a solid foundation for understanding user behavior on platforms like Twitch.
