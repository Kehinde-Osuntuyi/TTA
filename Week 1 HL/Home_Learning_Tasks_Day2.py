
# Task 2 Using a function.
motorbike_price = 2000

def depreciation(item, year):
    while item > 1000:
        item *= 0.9
        year += 1
        print("After Year " + str(year) + ", the new price of the motorbike is " + str(item))

depreciation(motorbike_price, 0)

# Task 3 Using a procedure.
number1 = int(input("input your first number: "))
number2 = int(input("input your second number: "))
operator_menu = input("Select operator: A for addition, S for subtraction, D for division, M for multiplication, P for power : ")
result = 0

def procedure_1(number1, number2, operator_menu):
    
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

procedure_1(number1, number2, operator_menu)

