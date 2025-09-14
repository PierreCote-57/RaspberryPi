
# from <Module (the folder with the __init__.py)> import <some .py file>
from snake import Person

# The imported thing (i.e. module name) + the class to create
me = Person.Student("Pierre", 68)

line = f"Hello, {me}"
print(line)
