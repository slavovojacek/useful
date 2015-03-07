#!/bin/bash

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

if [ $branch_name == "master" ]; then

	printf "\n\n\nDo you wish to make a new release tagged ${1}?\n\nThe release message is: ${2}\n\n"

	select yn in "Yes" "No"; do
	    case $yn in
	        Yes )
			# Runs all the git commands
			git tag -a $1 -m "${2}"
			git push --tags

			# git push origin $branch_name

			echo "\n\n\nThe release has been made successfully!"

			break;;
	        No )
			echo "Ok, maybe next time :-)"
			exit;;
	    esac
	done

else
	echo "You need to checkout to master before making a release!"
fi
