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

echo "Enter PassWord [Minimum 8 characters]"
read passWord
pat=([a-zA-Z]{8})$
if [[ $passWord =~ $pat ]]
then
	echo "Vaild"
else
	echo "Invaild"
fi

#Password rule to check upper case
LC_ALL=cs_CZ.UTF-8
echo "Enter PassWord [Minimum 8 characters]"
read passWord
pat=([a-zA-Z]{8,})$
pat1=^[A-Z]
if [[ $passWord =~ $pat1$pat ]]
then
	echo "Vaild password"
else
	echo "Invaild starting letter must be UpperCase"
fi

#password rule 3 to check numeric character
LC_ALL=cs_CZ.UTF-8
echo "Enter PassWord [Minimum 8 characters]"
read passWord
pat=^[A-Z]
pat1=([a-zA-Z0-9]{8,})
pat2=(^[0-9])
if [[ $passWord =~ $pat$pat1$pat2 ]]
then
	echo "Vaild"
else
	echo "Invaild starting letter is UpperCase and one numeric number must be"
fi
