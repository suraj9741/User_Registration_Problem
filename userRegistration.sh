#!/bin/bash -x
echo "Welcome to registration form"
f=0
first_Name()
{
	pattern="^[A-Z]{1}[a-z]{2,}"
	if [[ $1 =~ $pattern ]]
	then
		echo "Valid Name"
		f=1
	else
		echo "Invalid Name"
		f=0
	fi
}
while [ $f -eq 0 ]
do
	echo "Enter the Name :"
	read name
	first_Name $name
done