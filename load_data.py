import pandas as pd
import sqlite3
import os

print("Starting data load...")

# Connect to SQLite database
conn = sqlite3.connect('twitch.db')

# Load the CSV files
print("Loading stream.csv...")
stream_df = pd.read_csv('stream.csv')

print("Loading chat.csv...")
chat_df = pd.read_csv('chat.csv')

# Write to SQLite
print("Writing stream table to database...")
stream_df.to_sql('stream', conn, if_exists='replace', index=False)

print("Writing chat table to database...")
chat_df.to_sql('chat', conn, if_exists='replace', index=False)

conn.close()

print("✅ Data loaded successfully into twitch.db!")