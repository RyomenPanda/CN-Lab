def is_palindrome_number(num):
    return str(num) == str(num)[::-1]

# Input
number = int(input("Enter a number: "))
if is_palindrome_number(number):
    print(f"{number} is a Palindrome")
else:
    print(f"{number} is Not a Palindrome")
