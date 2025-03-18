import pandas as pd
import os

# Print the directory path
print("Current directory:", os.getcwd())
print("Change to q4 directory")
os.chdir("q4")
print("Current directory:", os.getcwd())


# Load the CSV 
df = pd.read_csv(".\extracted\TMDB_movie_dataset_v11.csv")

# Filter for Star Wars movies (case insensitive), note that this only filters the title column which contains 'Star Wars' in the title
star_wars_df = df[df["title"].str.contains("Star Wars", case=False, na=False)]

# Save filtered data
star_wars_df.to_csv("star_wars_movies.csv", index=False)

print("Filtered Star Wars movies saved as 'star_wars_movies.csv'")
