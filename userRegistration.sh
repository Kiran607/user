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
