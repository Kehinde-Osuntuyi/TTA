import numpy as np

# Task 1. Array of numbers from 0 to 9.

array_1 = np.arange(10)
print(array_1)

# Task 2. 3x3 Array of boolean 'True' values.
zeros_array = np.zeros([3,3])
bool_arr = zeros_array < 1
print(bool_arr)

# Task 3. Extract all odd numbers from array of 1-10.
arr_1 = np.arange(1, 11)
arr_odd_nums = arr_1[::2]
print(arr_odd_nums)

# Task 4. Replace all odd numbers with value of -1.
arr_1 = np.arange(1, 11)
arr_odd_nums = arr_1[::2] 
arr_odd_nums[:] = -1
print(arr_1)

# Task 5. Convert 1D array to 2D.
arr_1D = np.array([5,10,15,20,25,30,35,40,45])
arr_2D = arr_1D.reshape(3,3)
print(arr_2D)

# Task 6. Stacking two arrays
a = np.arange(1,7).reshape(2,3)
b = np.arange(11,17).reshape(3,2)
c = np.dot(a,b)
sum_ = np.sum(c) 
print(c)
print(sum_)

