def sum_of_digits(number):
    total = 0
    while number > 0:
        total += number % 10
        number = number // 10
    return total

# Input
num = int(input("Enter an N-digit number: "))
print(f"Sum of digits of {num} is {sum_of_digits(num)}")
