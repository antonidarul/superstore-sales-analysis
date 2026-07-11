import pandas as pd 


data = pd.read_csv('store.csv')

dt = pd.DataFrame(data)


print(dt.head(5))