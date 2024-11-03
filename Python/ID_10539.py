# Count the unique activities for each user, ensuring users with no activities are also included.


# The output should show each user's ID and their activity count, with zero for users who have no activities.

# DataFrames: user_profiles, activity_log

# user_profiles

# user_id:
# int
# name:
# varchar
# email:
# varchar
# signup_date:
# datetime
# activity_log


# user_id:
# int
# activity_type:
# varchar
# activity_timestamp:
# datetime


# Import your libraries
import pandas as pd

# Start writing code
user_profiles.head()
activity_counts = activity_log.groupby('user_id')['activity_type'].nunique().reset_index()
df = pd.merge(user_profiles,activity_counts, on='user_id',how='left')
df['activity_type'] = df['activity_type'].fillna(0)

col = ['name','email','signup_date']
df = df.drop(col, axis = 1)
print(df)