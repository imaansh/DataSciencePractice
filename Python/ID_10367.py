# You're tasked with analyzing a Spotify-like dataset that captures user listening habits.
# For each user, calculate the total listening time and the count of unique songs they've listened to. In the database duration values are displayed in seconds. Round the total listening duration to the nearest whole minute.


# The output should contain three columns: 'user_id', 'total_listen_duration', and 'unique_song_count'.


# listening_habits
# user_id:
# int
# song_id:
# int
# listen_duration:
# float



# Import your libraries
import pandas as pd

# Start writing code
listening_habits.head()
df = listening_habits.groupby('user_id').agg(
    total_listen_duration=('listen_duration','sum'),
    unique_song_count = ('song_id','nunique'))
    
print(df)