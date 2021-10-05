
print('Hello World')

print(-5 + 50)


for i in range(10):
    print('number: ' + str(i))


#function example
import random
dicelist = [1,2,3,4,5,6,7,8,9,10]
def dice():
    number1 = random.choice(dicelist)
    number2 = random.choice(dicelist)
    
    number = number1 + number2
    print(number1)
    print(number2)
    print(number)

dice()

my_id_list = [1,2,3,4,5,6,7]
my_id_list[2]= 'edit'
print(my_id_list)

print(my_id_list[2])
print(my_id_list[4])

my_2d_list = [[1,2,3,4],[4,5,6,7],[8,9,10,11]]
for i in range(len(my_2d_list)):
    print('My list at index ' + str(i) + 'is: ' + str(my_2d_list[i]))

print('Hello World')

