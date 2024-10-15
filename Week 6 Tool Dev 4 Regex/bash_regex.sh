#! C:\Program Files\Git\bin\sh.exe
# shellcheck shell=bash

# Michael Moyer 10/15/2024
# ISS 212 CS Scripting - bash_regex.sh
# Citations: Jenn Moody (Week 6 - Tool Development 4 Walkthrough.docx)

# Description: This bash script redacts IP addresses from a log file

# sed, or stream editor, with extended regular expression option.
# It will search for IP addresses and redact them, then save them to access_redacted.log
sed -E 's/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/[REDACTED]/g' access.log >access_redacted.log
echo "Redacted IP addresses in access.log and saved as access_redacted.log"
