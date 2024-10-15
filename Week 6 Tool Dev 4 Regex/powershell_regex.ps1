'''
.DESCRIPTION
Michael Moyer 10/15/2024
ISS 212 - CS Scripting - powershell_regex.ps1
Citations: Jenn Moody (Week 6 Tool Development 4 Walkthrough.docx)

.PURPOSE
This powershell script will count failed login attempts in a log file.

.USAGE

'''

# Set the path to the security log file
$logFilepath = "E:\Documents\School\ISS 212 Cybersecurity Scripting\My_Repo\Week 6 Tool Dev 4 Regex\security.log"

# Searches through the log file for IP addresses with failed login attempts and stores the matches in a variable.
$failedAttempts = Select-String -Path $logFilepath -Pattern "Failed password . from (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" -AllMatches

# Initializes array to count number of failed login attempts per IP address
$ipCounts = @{}

# Loops through each line and sums up the number of failed login attempts per IP address
foreach ($match in $failedAttempts) {

	# Extracts the IP address from the matched line
	$ip = $match.Matches.Groups[1].Value

	# It increments the count by 1 if the extracted IP address is found, else the count is set to 1.
	if ($ipCounts.ContainsKey($ip)) {
    	$ipCounts[$ip] += 1
	} else {
    	$ipCounts[$ip] = 1
	}
}

Write-Host "Potentially Malicious IPs:"

# If an IP address with 3 or more failed login attempts is detected, it is outputed to the console.
foreach ($ip in $ipCounts.Keys) {
	if ($ipCounts[$ip] -ge 3) {
    	Write-Host "$ip has $($ipCounts[$ip]) failed login attempts"
	}
}
