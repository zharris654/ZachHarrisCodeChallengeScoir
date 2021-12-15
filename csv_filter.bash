#!/bin/bash
#
# src - Source code for the solution to the CSV Filter challenge
#
# Zach Harris
#
# 12/15/21
#
# The purpose of this program is to parse a CSV file containing a list of last and first names, as well as a date of birth, based
# on user input
#

file = $1

read -p "Please select an option to filter by: " filter
echo "You have chosen: $filter" 
