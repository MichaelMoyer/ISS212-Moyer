'''
.DESCRIPTION
Michael Moyer 10/15/2024
ISS 212 - CS Scripting - Python Script: python_regex.py
Citations: Jenn Moody (Week 6 Tool Development 4 Walkthrough.docx)

.PURPOSE
Python script finds failed login attempts in a log file.

.USAGE
Set path to log file and run script.
'''

import re

# Sets the path to the log file
logfilepath = r"E:\Documents\School\ISS 212 Cybersecurity Scripting\My_Repo\Week 6 Tool Dev 4 Regex\auth.log"

# Opens log file in read mode and stores the contents of the log file in the variable logcontents
# closes file after finished storing contents
with open(logfilepath,'r') as file:
    logcontents = file.read()
    file.close()

# Defines the regex pattern for IP address on lines following the words "Failed password"
pattern = r"Failed password .* from (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"

# Uses re.findall() to search the log for lines that contain our defined pattern
failedpasswords = re.findall(pattern,logcontents)

# Removes duplicate IP addresses and outputs unique IP addresses to the console
uniqueIPs = set(failedpasswords)
print("Failed login attempts detected from:")
for line in uniqueIPs:
    print(line)