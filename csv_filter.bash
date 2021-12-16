#!/bin/bash
#
# csv_filter - Source code for the solution to the CSV Filter challenge
#
# Zach Harris
#
# 12/15/21
#
# The purpose of this program is to parse a CSV file containing a list of first and last names, as well as a date of birth, based
# on user input. This program must be passed a CSV file as an argument, and the user must follow all prompts.
#

file=$1

echo -e "Please enter a filter to use in the search. Options include:\nfirst_name\nlast_name\nbirth_year\n"
read -p "> " filter
echo -e "\n"
echo -e "Please enter the the name or birth year you are searching for:\n"
read -p "> " search

if [[ $filter != "first_name" && $filter != "last_name" && $filter != "birth_year" ]]
then
	echo "Invalid input. Please try again!"
	exit 0
fi

echo -e "\nFiltering by $filter..."
echo -e "Searching for all records containing $search...\n"

result=0
while read line; do
	field=0
	case $filter in

		first_name)

			field=1
			;;
		
		last_name)
			
			field=2
			;;

		birth_year)
			
			field=3
			;;
		esac

		test=$(echo $line | awk -v temp=$field -F"," '{print $temp}')
			
		if [ $filter = "birth_year" ]
		then
			test="${test:0:4}"
		fi

		if [ ${test,,} = ${search,,} ]
		then
			echo $line
			result=1
		fi
done < $file

if [ $result == 0 ]
then
	echo "No Results"
fi
