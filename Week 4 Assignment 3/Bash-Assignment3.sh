#!/usr/bin/bash

# Michael Moyer
# ISS 212 Cybersecurity Scripting
# September 28, 2024
# Resources:    Jenn Moody Week 3 - Assignment 2 Walkthrough.docx

# This function analyzes packet size. If >= 100 then it can be analyzed
network_analysis() {

  # read -p prompts user input and then stores it in variable packet_size
  read -p "Please enter the packet size in bytes: " packet_size

  # -ge is "greater than or equal to". Bash handles integers natively
  if [ "$packet_size" -ge 100 ]; then
    echo "True - Packet meets the threshold for analysis."
  else
    echo "False - Packet is too small to analyze."
  fi

  # Pauses program for sake of screenshot. Press enter to continue running program
  read -p "Press Enter to continue"

}

# This function checks for correct protocol name, Cyphersec
protocol_ID() {

  # Store name of entered protocol in the variable protocolname
  read -p "Enter the name of the protocol: " protocolname

  # Check if the entered protocol name is "Cyphersec" or "cybersec"
  if [ "$protocolname" == "Cyphersec" ]; then
    echo "Yes - Cyphersec is the best protocol ever!"
  elif [ "$protocolname" == "cybersec" ]; then
    echo "No, I want a big cyphersec!"
  else
    echo "Cyphersec! Not $protocolname"
  fi

  # Pauses program for sake of screenshot. Press enter to continue running program
  read -p "Press Enter to continue"
}

# This function calculates data usage tax
data_tax() {

  read -p "Enter you annual data usage in MB: " datasize

  # Tax is 18% - 556 if datasize is less than 85,528, else it is 32% of surplus + 14,839
  # Use -le for less than
  if [ "$datasize" -le 85528 ]; then

    # use double parentheses for arithmatic operations
    tax=$((datasize * 18 / 100 - 556))

  else
    surplus=$((datasize - 85528))
    tax=$((14839 + surplus * 32 / 100))

  fi

  # If calculated tax is less than zero, then tax is rounded up to zero
  if [ "$tax" -lt 0 ]; then
    tax=0
  fi

  echo "Your Data Security Tax is: $tax MB"

  # Pauses program for sake of screenshot. Press enter to continue running program
  read -p "Press Enter to continue"
}

# This function determines if the given year isa  patch year or standard year
patch_cycle() {

  read -p "Please enter a year to check for the patch cycle: " year

  # 2000 is the first year, so any year less than 2000 is not included
  if [ "$year" -lt 2000 ]; then
    echo "not within the managed patch period"
  else

    # If year is not divisible by 4 then it is standard year
    if (( year % 4 != 0 )); then
      echo "Standard Year"
    # If year is not divisible by 100 then it is a patch year
    elif (( year % 100 != 0 )); then
      echo "Patch Year"
    # If year is not divisible by 4, 100 and is not less than 2000, it is a patch year
    else
      echo "Patch Year"
    fi
  fi

  # Pauses program for sake of screenshot. Press enter to continue running program
  read -p "Press Enter to continue"

}

# call all of our functions
network_analysis
protocol_ID
data_tax
patch_cycle

