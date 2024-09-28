# Michael Moyer
# ISS 212 Cybersecurity Scripting
# September 28, 2024
# Resources:    Jenn Moody Week 3 - Assignment 2 Walkthrough.docx

def main():

    # Get protocol name from user input
    protocolname = input("Please enter the name of the protocol: ")

    # Check if input is equal to "Cyphersec" or "cybersec" or neither
    if protocolname == "Cyphersec":
        print("Cyphersec is the only supported protocol!")
    elif protocolname == "cybersec":
        print("DENIED. Cyphersec protocol ONLY!")
    else:
        print(f"Cyphersec! Not {protocolname}!")

main()