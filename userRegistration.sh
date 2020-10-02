##!/bin/bash -x
echo "Welcome to registration form"
f=0
declare -A inputs
first_Name()
{
	f=0
	pattern="^[A-Z]{1}[a-z]{2,}"
	if [[ $1 =~ $pattern ]]
	then
		echo "Valid $2 Name"
		f=1
		echo ""
	else
		echo "Invalid $2 Name"
		f=0
		echo ""
	fi
}
while [ $f -eq 0 ]
do
	echo "Enter the First Name :"
	read fname
	first_Name $fname First
done
f=0
while [ $f -eq 0 ]
do
	echo "Enter the Last Name :"
	read lname
	first_Name $lname Last
done

echo "First Name : $fname"
echo "Last Name  : $lname"