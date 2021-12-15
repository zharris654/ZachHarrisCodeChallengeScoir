# ZachHarrisCodeChallengeScoir
## How-To
This program is a bash script that runs on Bash 5.1.8 and was developed using the VIM 8.2 tool on a Kali Linux 2021.3 machine. To run this program, you must downlaod the file csv_filter.bash and have a version of Bash 5.1.8 or later. This program must be passed a CSV file as an argument (bash csv_filter.bash FILENAME), and after executing the script, the user must follow all prompts. The script will then return a record from the CSV file matching the input made by the user.

## Assumptions
The assumptions made for this challenge were the following:
1. The CSV file being input to the program always contains data listed in exactly the same format (first_name,last_name,dob).
2. The records being returned to the user are to be returned in the same format as they are listed in the file (first_name,last_name,dob).
3. If the user inputs a birth year as part of the filtered search, they only input the year, and not the month or day.
4. Records for different people in the CSV file can have identical birth years.
