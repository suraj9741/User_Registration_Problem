##!/bin/bash -x
echo "Welcome to registration form"
f=0
check()
{
	f=0
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
number()
{
	pattern="^[9]{1}[1]{1}[[:space:]]{1}[1-9]{1}[0-9]{9}"
	read input
	if [[ $input =~ $pattern ]]
	then
		echo "Valid Mobile Number"
		f=1
		echo ""
	else
		echo "Invalid Mobile Number"
		f=0
		echo ""
		echo "Enter Mobile Number again :"
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

f=0
echo "Enter Number :"
while [ $f -eq 0 ]
do
	number
done
number1=$input

echo "First Name : $fname"
echo "Last Name  : $lname"
echo "Email      : $email"
echo "Number     : $number1"