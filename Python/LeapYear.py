def is_leap_year(year):
    if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
        return True
    else:
        return False

# Input
year = int(input("Enter a year: "))
if is_leap_year(year):
    print(f"{year} is a Leap Year")
else:
    print(f"{year} is Not a Leap Year")
