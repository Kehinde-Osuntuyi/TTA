# Task 1
import random
number = random.randint(1, 10)
user_name = input("What is your name: ")
guess = int(input("Guess a number between 1 and 10: "))

if guess == number:
    print("Well done " + user_name + " you guessed correctly")
else:
    print("Unlucky, better luck next time.")
            
    print(str(number) + " was the correct number.")
    print(str(guess) + " was your guess.")

print('')
print("TASK 2 - SOLUTION")
# Task 2
user_number = int(input("Input a number between 1 and 100: "))
if user_number <= 33:
    print("Joke 1")
elif user_number <= 66:
    print("Joke 2")
else:
    print("Joke 3")

print('')
print("TASK 3 - SOLUTION")
# Task 3
starter = input("What is your favourite starter: ")
main_course = input("What is your favourite main_course: ")
dessert = input("What is your favourite dessert: ")
drink = input("What is your favourite drink: ")

print("Your favourite meal is " + starter + ", " + main_course + " and " + dessert + " with a glass of " + drink)

print('')
print("TASK 4 - SOLUTION")
# Task 4
motorbike_cost = 2000
year = 0
while motorbike_cost > 1000:
    motorbike_cost *= 0.9
    year += 1
    print("After Year " + str(year) + ", the new price of the motorbike is " + str(motorbike_cost))

print('')
print("TASK 5 - SOLUTION")
# Task 5
operator_menu = input("Select operator: A for addition, S for subtraction, D for division, M for multiplication, P for power : ")
number1 = int(input("Enter your first number: "))
number2 = int(input("Enter your second number: "))
result = 0
if operator_menu == "a" or operator_menu == "A":
    result = number1 + number2
elif operator_menu == "s" or operator_menu == "S":
    result = number1 - number2
elif operator_menu == "d" or operator_menu == "D":
    result = number1 / number2
elif operator_menu == "m" or operator_menu == "M":
    result = number1 * number2
elif operator_menu == "p" or operator_menu == "P":
    result = pow(number1, number2)


print(result)


    
