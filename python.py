#!/usr/bin/python3

# Say "Hello, World!" With Python
print("Hello, World!")

# Arithmetic Operators
if __name__ == '__main__':
    a = int(input())
    b = int(input())
    print(a+b)
    print(a-b)
    print(a*b)

# Python: Division
if __name__ == '__main__':
    a = int(input())
    b = int(input())
    print(int(a/b))
    print(float(a)/b)

# Loops
if __name__ == '__main__':
    n = int(input())
    for i in range(n):
        print(i*i)

# Write a function
def is_leap(year):
    leap = False
    if year%400==0 :
        leap = True
    elif year%4 == 0 and year%100 != 0:
        leap = True
    return leap

year = int(input())
print(is_leap(year))
