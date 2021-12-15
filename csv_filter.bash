#!/bin/bash
#
# csv_filter - Source code for the solution to the CSV Filter challenge
#
# Zach Harris
#
# 12/15/21
#
# The purpose of this program is to parse a CSV file containing a list of first and last names, as well as a date of birth, based
# on user input
#

file=$1

read -p "Please select an option to filter by: " filter
read -p "Please enter the name or birth year you are searching for: " search
echo -e "\nFiltering by $filter..."
echo -e "Searching for $search...\n"

while read line; do
	case $filter in

		first_name)

			test=$(echo $line | awk -F"," '{print $1}')
		
			if [ $test = $search ]
			then
				echo $line
			fi
			;;
		
		last_name)
			
			test=$(echo $line | awk -F"," '{print $2}')
			
			if [ $test = $search ]
			then
				echo $line
			fi
			;;

		birth_year)
			
			test=$(echo $line | awk -F"," '{print $3}')
			year="${test:0:4}"
			
			if [ $year = $search ]
			then
				echo $line
			fi
			;;
		esac
done < $file
