# ##########
# Definition of my class


class ClassSample:

	# def defines a method/function

    # Constructor
	def __init__(self, name, age):
		self.name = name
		self.age = age

	# toString
	def __str__(self):
		return f"{self.name} is {self.age} years old"

me = ClassSample("Pierre", 68)
print(me)

