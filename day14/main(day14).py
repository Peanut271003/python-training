class Student:
    def __init__(self, name, age, address):
        self.name = name
        self.age = age 
        self.addess = address

    def show_info(self):
        print(f'''STUDENT INFO
Name: {self.name}
Age: {self.age}
Address: {self.addess}''')
        

    # dunder method
    def __str__(self):
        return f"<Student(name={self.name}, age={self.age})>"

    def __gt__(self, other):
        return self.age > other.age
    

# __name__   
student_one = Student("Peanut", 21, "New York")
student_two = Student("Peter", 33, "Paris")
print(student_one > student_two)

# print(student_one.name)
# print(student_one.age)
# print(student_one)

Student.show_info(student_one)
# student_one.show_info()


