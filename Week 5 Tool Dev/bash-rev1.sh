#!C:\Program Files\Git\bin\sh.exe

# Michael Moyer 10/5/2024
# ISS 212 CS Scripting - WK 5 - Bash Review
# Citations: Jenn Moody (Week 5 - Tool Development 3 Walkthrough.docx)

# Bash Script that takes input from the user and outputs a string using 2 inputs
# Takes input from the user and assigns to variables.

echo "What is your first name?"
read -r firstname

echo "What is your last name?"
read -r lastname

echo "Your first name is ${firstname} and your last name is ${lastname}"