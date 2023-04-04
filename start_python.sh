#!/bin/bash
set -e

README='project-readme.md'

cat << EOF

A script to install create a new Python project and virtual environment.

This will:
1. create a new project folder
2. create a new python 3 virtual environment in that folder
3. add a simple readme file in the project folder with instructions

Use this script at your own risk.  It may not work on all Chromebooks or setups.
This has been tested on a clean powerwashed Google Pixelbook.

EOF

read -p "Press Enter to continue ... or Ctrl-C to cancel." START

echo
read -e -i "$HOME/project" -p "Input name of project folder to be created: " PROJECT

echo
echo "Finding Python versions installed"

for I in python3.10 python3.9 python3.8 python3.7 python3.6 python3.5 python3
do
    if [[ $(which $I) != "" ]]
    then
        echo "- $I is installed and available at '$(which $I)'"
        read -n 1 -p "Shall I use $I for the virtual environment?  (y/n): " CONFIRM
        echo
        if [[ $CONFIRM == "Y" || $CONFIRM == "y" ]]
        then
            PYTHON=$(which $I)
            break
        fi
    fi
done

if [[ $PYTHON == "" ]]
then
    echo
    echo "Error - You need to select one of the python versions."
    exit 1
fi

echo
read -e -i ".venv" -p "Name of virtual environment to be created: " VENV

echo
echo "Creating '$PROJECT' project folder ..."
mkdir $PROJECT

echo
echo "Creating virtual environment $VENV ..."
virtualenv -p "$PYTHON $PROJECT/$VENV"

echo
echo "Virtual environment created at $PROJECT/$VENV "
echo "Activate it from the project directory by typing 'source venv/bin/activate'"


cp readme-files/$README $PROJECT

echo
echo "Check out the $README file in the project folder for more basic instructions."
echo
echo "Finished."
