print("Calculator module Loaded")

def add(a, b):
    return a + b

def subtract(a, b):
    return a - b


def multiply(a, b):
    return a * b


def divide(a, b):
    return a / b


def square(a):
    return a*a
    

if __name__=='__main__':
    print("testing calc")
    print(add(10,2))
    print(subtract(10,2))
    print(multiply(10,2))
    print(divide(10,2))
    print(square(10))