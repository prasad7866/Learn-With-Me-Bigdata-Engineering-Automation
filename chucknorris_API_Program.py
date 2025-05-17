# checknorris jokes 50 requests making as dataframe
import requests
import pandas as pd

# Initialize an empty list to store joke data
jokes_list = []

for _ in range(50):
    response = requests.get("https://api.chucknorris.io/jokes/random")
    if response.status_code == 200:
        joke_data = response.json()
        print(joke_data)
        jokes_list.append(joke_data)
    else:
        print("Failed to fetch joke")

# Convert the list of jokes into a DataFrame
df = pd.json_normalize(jokes_list)

# Display full DataFrame
pd.set_option("display.max_rows", None)
pd.set_option("display.max_columns", None)
pd.set_option("display.width", None)
pd.set_option("display.max_colwidth", None)

print(df)

df.to_csv("D:\\files\\chuck_norris_jokes.csv", index=False)
