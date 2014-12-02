#!/bin/bash

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

git status

printf "\nDo you wish to commit and push to branch ${branch_name}?\nThe commit message is: ${1}\n"

select yn in "Yes" "No"; do
    case $yn in
        Yes )
		# Removes all ._ and .DS_Store files

		find . -name ".DS_Store" -print0 | xargs -0 rm -rf
		find . -name "._*" -print0 | xargs -0 rm -rf
		
		# Runs all the git commands

		git add -A
		git commit -m "${1}"
		git push origin ${branch_name}
		
		break;;
        No )
		echo "Ok, maybe next time :-)"
		exit;;
    esac
done
