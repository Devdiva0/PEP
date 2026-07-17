from ast import main
import importlib
import calculator

importlib.reload(calculator)

num1 = 10
num2 = 20

print(calculator.add(num1, num2))
print(calculator.subtract(num1, num2))
print(calculator.multiply(num1, num2))
print(calculator.divide(num1, num2))
print(calculator.square(num1))




from datetime import datetime
today=datetime.now().time()
print(today)
# time=today.time()
# print(time)



import math
print(math.__file__)
print(math.__doc__)
# print(dir(math))
help(math.sqrt)
print(math.sqrt(25))
print(math.factorial(5))
print(math.pi)
print(math.pow(2,4))


import random
print(random.randint(1,10))
print(random.choice([1,2,3,4,5,6]))
print(random.random())
for i in range(5):
    print(random.randint(1,56))


import geometry
print(geometry.area_square(5))
print(geometry.area_rectangle(5,4))


import statistics
marks=[75,80,90,85,95]
print(statistics.mean(marks))
print(statistics.median(marks))


import keyword
print(keyword.kwlist)
print(keyword.iskeyword('for'))


import os
print(os.getcwd())


import sys
print(sys.path)
print(sys.version)
print(sys.platform)


# billing system project
# /
# |
#  -- main.py
# |
#  -- tax.py
# |
#  -- calculator.py
# | 
#  -- discount.py
# |
#  -- invoice.py