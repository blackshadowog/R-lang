import pandas as pd

def load_data(path='data/real_estate.csv'):
    df = pd.read_csv(path)
    df = df.drop_duplicates()
    return df

if __name__ == '__main__':
    df = load_data()
    print(df.head())
    print(df.describe())
