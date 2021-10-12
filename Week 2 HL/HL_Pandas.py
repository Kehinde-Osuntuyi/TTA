import pandas as pd

# Task 1. Rows and Columns.
data_destinations = pd.read_csv('My_Data.csv')
print(data_destinations.shape)


# Task 2. Rows 3-8.
print(data_destinations[2:8])


# Task 3. Mean number of all inclusive hotels.
print(data_destinations["All inclusive hotels"].mean())


# Task 4. Lowest scoring destination.
print(data_destinations["Score"].min())
print(data_destinations["Score"] == 2)
print(data_destinations.iloc[13, 0])



# Task 5. Highest scoring destination.
print(data_destinations["Score"].max())
print(data_destinations["Score"] == 9)
print(data_destinations.iloc[[4, 10], 0])



# Task 6. Destinations with 9 or more all inclusive hotels.
print(data_destinations["All inclusive hotels"] > 9)
print(data_destinations.iloc[[1, 4, 6, 8, 12, 14], [0, 3]])


# Task 7. Score above 8.
print(data_destinations["Score"] > 8)
print(data_destinations.iloc[[4, 10], [0, 1]])


# Task 8. Score below 2.
print(data_destinations["Score"] <= 2)
print(data_destinations.iloc[13, [0, 1]])

