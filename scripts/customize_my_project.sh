#!/bin/bash
# Script to customize the template project to your amazing project

echo 
echo 'Customizing ....'
echo 
echo 'Remove git info'
rm -rf .git
rm -rf .gitkeep
echo

echo 'Renaming'
read -p "Enter your project name : " project
sed -i -e "s/\(rootProject.name = \).*/\1'$project'/" ./settings.gradle

read -p "Enter your group name : " group
sed -i -e "s/\(group = \).*/\1$group/" ./gradle.properties

read -p "Enter your team name : " team
sed -i -e "s/\(teamName = \).*/\1$team/" ./gradle.properties

echo
echo 'Clean up'
rm -rf ./scripts/

echo 'All Ok'
echo 'Happy coding!!'
