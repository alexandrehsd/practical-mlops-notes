import pandas as pd

csv_url = (
    "https://raw.githubusercontent.com/paiml/wine-ratings/main/wine-ratings.csv"
)

# set index_col to 0 to tell pandas that the first column is the index
df = pd.read_csv(csv_url, index_col=0)
df.head(-10)

# df.drop(['grape'], axis=1, inplace=True)
df.to_csv("wine.csv")

# df = pd.read_csv('wine.csv')
# df.to_csv('wine2.csv')
