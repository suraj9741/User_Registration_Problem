##!/bin/bash -x
echo "Welcome to registration form"
f=0
check()
{
	f=0
	pattern=$2
	if [[ $1 =~ $pattern ]]
	then
		echo "Valid $3 $4"
		f=1
		echo ""
	else
		echo "Invalid $3 $4"
		f=0
		echo ""
		echo "Enter $3 $4 again :"
	fi
}
loop()
{
	while [ $f -eq 0 ]
	do
		read input
		$1 $input $2 $3 $4
	done
}
pattern="^[A-Z]{1}[a-z]{2,}"
echo "Enter First Name :"
loop check $pattern First Name
fname=$input
f=0
echo "Enter Last Name :"
loop check $pattern Last Name
lname=$input
pattern="^([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]?)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
f=0
echo "Enter Mail :"
loop check $pattern Email
email=$input

echo "First Name : $fname"
echo "Last Name  : $lname"
echo "Email      : $email"