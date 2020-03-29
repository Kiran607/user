#! usr/bin/bash -x

shopt -s extglob
echo "Enter user FirstName"
read name
firstName=(^[A-Z][a-z]{3,})$
if [[ $name =~ $firstName ]]
then
	echo "Vaild"
else
	echo "Invaild"
fi

echo "Enter user LastName"
read lname
lastName=(^[A-Z][a-z]{3,})$
if [[ $lname =~ $lastName ]]
then
	echo "Vaild"
else
	echo "Invaild"
fi

echo "Enter user Email"
read mail
pat="^[a-z]{3,}(|[.]?[0-9a-zA-Z]+)([@])([a-z0-9]+)([.|+|_][a-z]{2,4})(|[.][a-zA-Z]{2})$"
if [[ $mail =~ $pat ]]
then
	echo "Vaild"
else
	echo "Invaild"
fi

echo "Enter Mobile Number"
read number
pat=(^[0-9]{2}[ ][0-9]{10})$
if [[ $number =~ $pat ]]
then
	echo "Vaild"
else
	echo "Invaild"
fi
