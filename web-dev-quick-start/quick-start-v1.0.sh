#!/bin/bash

# Simple script which creates new directory with HTML, CSS and JS files.
# It opens them automatically in Atom, so you should already have it installed.

clear
echo "
Please select:

1. Print working directory
2. Listing the contents of a directory
3. Start a new project (This option will create new directory)
0. Quit
"

read -p "Enter selection [0-3] > "

if [[ $REPLY =~ ^[0-3]$ ]]; then
  if [[ $REPLY == 0 ]]; then
    clear
    echo "
Program terminated.
Enter './run.sh' to run the program again or 'exit' to quit."
  fi
  if [[ $REPLY == 1 ]]; then
    clear
    echo "
Your current working directory is: "
    pwd
    echo "
Done!
Enter './run.sh' to run the program again or 'exit' to quit."
  fi
  if [[ $REPLY == 2 ]]; then
    clear
    echo "
List of all directories and files in the current working directory: "
    ls -l
    echo "
Done!
Enter './run.sh' to run the program again or 'exit' to quit."
  fi
  if [[ $REPLY == 3 ]]; then
    clear
    echo "
Welcome!
This script will make a new directory for your project and it will also
make index.html (with base structure), main.css and main.js files in your
newly created directory.
Once that's done, you will get a list of all files in your new directory
and everything will be opened in Atom text editor instantly.

***Please note that using 'space' is not alowed!***
Use dash '-' or underscore '_' if you want to separate words.

How would you like your new directory to be called?"
  read name
    if [ -d $name ]; then
    clear
    echo "
Sorry, directory with that name already exists.
Please, try to use a different name.
Enter './run.sh' to run the program again or 'exit' to quit."
    fi
    if [ ! -d $name ]; then
    mkdir $name
    cd $name
    echo '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="main.css">
  <title>New Project</title>
</head>
<body>
  <script src="main.js" charset="utf-8"></script>
</body>
</html>' > index.html
    > main.css
    > main.js
    ls -l
    atom .
    echo "
Done!
This is a list of your new files in * $name * directory.
Enter './run.sh' to run the program again or 'exit' to quit."
    fi
  fi
else
  clear
  echo "
Invalid entry.

Enter './run.sh' to run the program again or 'exit' to quit."
fi
$SHELL
