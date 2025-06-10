def calculate_hcf(a, b):
    while b:
        a, b = b, a % b
    return a

# Input
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))
hcf = calculate_hcf(num1, num2)
print(f"HCF of {num1} and {num2} is: {hcf}")
