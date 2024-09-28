# Michael Moyer
# ISS 212 Cybersecurity Scripting
# September 28, 2024
# Resources:    Jenn Moody Week 3 - Assignment 2 Walkthrough.docx

def main():

    # Enter year, only accept integers
    year = int(input("Please enter the year to determine patch cycle: "))

    # Patch cycle started in 2019, any years before are not with managed period
    if year < 2019:
        print("Not within managed patch period.")
    else:
        # Years not divisible by 4 are standard years
        if year % 4 != 0:
            print("Standard Year")

        # Years not divisible by 100 are patch years
        elif year % 100 != 0:
            print("Patch Year")

        # Years not divisible by 400 are standard years
        elif year % 400 != 0:
            print("Standard Year")

        # If not divisible by 4, 100, or 400, it is a patch year
        else:
            print("Patch Year")

main()