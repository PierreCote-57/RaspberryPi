# ##########
# Definition of my class


class PersonClass:

	# def defines a method/function

    # Constructor
	def __init__(self, name, age):
		self.name = name
		self.age = age

	# toString
	def __str__(self):
		return f"{self.name} is {self.age} years old"

# Inherit from PersonClass, more tbd
# CAN define multiple classes in same source file
class Student(PersonClass):
	pass