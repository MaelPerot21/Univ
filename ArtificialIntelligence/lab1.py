import pandas as pd
from sklearn.preprocessing import StandardScaler

data = pd.read_csv("Life Expectancy Data.csv")
pd.set_option('display.max_columns', None)

boolData = data.isna()

#2563 missing values

#from 2938 rows to 1649
data.dropna(inplace=True)

numerical_columns = data.select_dtypes(include=['number']).columns

scaler = StandardScaler()
data[numerical_columns] = scaler.fit_transform(data[numerical_columns])

categorical_columns = data.select_dtypes(include=['object']).columns
data = pd.get_dummies(data, columns=categorical_columns)
