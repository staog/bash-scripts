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
make index.html (with base structure), main.css file (which will include
CSS Reset made by Eric Meyer) inside of css directory and main.js file
inside of js directory. Once that's done, you will get a list of all files
and subdirectories and everything will be opened in Atom text editor instantly.

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
  <link rel="stylesheet" href="css/main.css">
  <title>New Project</title>
</head>
<body>
  <script src="js/main.js" charset="utf-8"></script>
</body>
</html>' > index.html
    mkdir css
    cd css
    echo '/*
   =========================================
   Reset by Eric Meyer
   http://meyerweb.com/eric/tools/css/reset/
   v2.0 | 20110126
   License: none (public domain)
   =========================================
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}

/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
  display: block;
}

body {
  line-height: 1;
}

ol, ul {
  list-style: none;
}

blockquote, q {
  quotes: none;
}

blockquote:before, blockquote:after,
q:before, q:after {
  content: '';
  content: none;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

/*
  =========================================
  Custom styles
  =========================================
*/'  > main.css
    cd ..
    mkdir js
    cd js
    echo 'console.log("Make something amazing! d(-_-)b");
    ' > main.js
    cd ..
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

