# Michael Moyer
# ISS 212 Cybersecurity Scripting
# September 18, 2024
# Resources:    ex-loganalysis.py( Jenn Moody - https://courses.maine.edu/d2l/le/content/351273/viewContent/9659387/View) 

def read_log(file_path):
    # Opens the file in read mode, reads all the lines, and returns the lines as a list
    with open(file_path, 'r') as file:
        return file.readlines()

def filter_threats(log_lines):
    # Go through each line of the list and check for our key words that indicate a threat.
    # Each line indicated as a threat is added to a list of suspicious entries. 
    suspicious_entries = []
    for line in log_lines:
        if "Failed" in line or "Suspicious" in line:
            suspicious_entries.append(line)
    return suspicious_entries

def display_results(suspicious_entries):
    #Print out each entry in our suspicious entries list.
    for threat in suspicious_entries:
        print(threat)

if __name__ == "__main__":
    # Enter file name or absolute path to the log file
    file_path = "access.log"
    log_lines = read_log(file_path)
    suspicious_entries = filter_threats(log_lines)
    display_results(suspicious_entries)
