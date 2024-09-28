# Michael Moyer
# ISS 212 Cybersecurity Scripting
# September 28, 2024
# Resources:    Jenn Moody Week 3 - Assignment 2 Walkthrough.docx

def main():

    # Input amount of data used. Accept floating point values
    datasize = float(input(" Please enter you annual data usage in MB: "))

    # Tax at 18% if datasize does not exceed 85,528 MB.
    # If it does, tax at 32% of the surplus plus 14,839 MB.
    if datasize <= 85_528:
        tax = (0.18 * datasize) - 556
    else:
        tax = 14_839 + 0.32 * ( datasize - 85_528)

    # If the calculated tax is negative, it should be set to zero
    tax = max(tax, 0)

    # Round the output to the nearest whole number
    print(f"Your Data Security Tax is: {round(tax)} MB")

main()