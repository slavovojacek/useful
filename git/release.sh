#!/bin/bash

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

if [ $branch_name == "master" ]; then

	printf "\nDo you wish to make a new release tagged ${1}?\nThe release message is: ${2}\n"

	select yn in "Yes" "No"; do
	    case $yn in
	        Yes )
			# Copies all exported css files

			find css -name \*.css | xargs -I FILE cp FILE ../litchi-www/www/include/latest

			# Runs all the git commands

			git tag -a $1 -m "${2}"
			git push --tags

			# git push origin $branch_name

			echo "\n\nThe release has been made successfully!"

			break;;
	        No )
			echo "Ok, maybe next time :-)"
			exit;;
	    esac
	done

else
	echo "You need to checkout to master before making a release!"
fi