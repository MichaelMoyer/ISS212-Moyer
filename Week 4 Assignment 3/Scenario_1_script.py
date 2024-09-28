# Michael Moyer
# ISS 212 Cybersecurity Scripting
# September 28, 2024
# Resources:    Jenn Moody Week 3 - Assignment 2 Walkthrough.docx

def main():

    # User enters size of packet. If value is less 1337 or over 2600, it is false.
    packetsize = int(input("Please enter the size of the packet in bytes: "))
    print(packetsize >= 1337 and packetsize < 2600)

main()