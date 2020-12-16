#! /bin/bash
# username.sh
# Darren Pak
echo "Enter a username: "
read -r USER
while echo "$USER" | grep -E -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Must start with a letter, contain numbers, and be at least 3 characters but no more than 12."
	echo "Enter a username: "
	read -r USER
done
echo "Thank you"
