# Task 1. Storing numbers in a file.

numbers_file = 'random-numbers.txt'
with open(numbers_file, 'w') as my_numbers_file:
    my_numbers_file.write("3" "\n45" "\n83" "\n21")

my_numbers_file.close()
    
    

# Task 2
percentage_mark = int(input("Enter your percentage mark: "))
target_grade = (input("Enter your target grade: "))
exam_grade = None

def mark_grade(percentage_mark):
    if percentage_mark < 40:
        exam_grade = 'U'
        print("You got a " + exam_grade + " grade")
    elif percentage_mark < 50:
        exam_grade = 'E'
        print("You got a " + exam_grade + " grade")
    elif percentage_mark < 60:
        exam_grade = 'D'
        print("You got a " + exam_grade + " grade")
    elif percentage_mark < 70:
        exam_grade = 'C'
        print("You got a " + exam_grade + " grade")
    elif percentage_mark < 80:
        exam_grade = 'B'
        print("You got a " + exam_grade + " grade")
    elif percentage_mark < 90:
        exam_grade = 'A'
        print("You got an " + exam_grade + " grade")
    elif percentage_mark <= 100:
        exam_grade = 'A+'
        print("You got an " + exam_grade + " grade")
    print("Your target grade is  " + target_grade)
    if exam_grade == target_grade:
         print("Nice work, you achieved your target grade")
    elif (target_grade == 'D' and exam_grade in ['C', 'B', 'A', 'A+']) or (target_grade == 'C' and exam_grade in ['B', 'A', 'A+']) or (target_grade == 'B' and exam_grade in ['A', 'A+']) or (target_grade == 'A' and exam_grade == 'A+'):
        print("Well done, you exceeded your target grade.")
    elif (target_grade == 'D' and exam_grade == 'U') or (target_grade == 'C' and exam_grade in ['D', 'U']) or (target_grade == 'B' and exam_grade in ['C', 'D', 'U']) or (target_grade == 'A' and exam_grade in ['B', 'C', 'D', 'U']) or (target_grade == 'A+' and exam_grade in ['A', 'B', 'C', 'D', 'U']):
         print("Unfortunately you got below your target grade, better luck next time.")
    



mark_grade(percentage_mark)