I've made this script to help me start fast when I want to do some web development on my Linux machine.

First of all, you need to make this file executable, i.e. right click on "run.sh" file, select "Properties", then under "Permissions" check "Allow executing file as program". Or you can change permissions using terminal command "sudo chmod 755 run.sh".
Then just double-click on a file and choose to run it in terminal.

You will have 3 options:

1. Print current working directory
2. List all the files and directories in your current directory
3. Create brand new directory for your project

If you choose third option, you just need to pick a name for a new directory (where your new project will be placed), and this
script is going to make that directory together with index.html (which includes base web page structure), main.css and main.js files (both empty).
When that's done, it will open newly created directory in Atom text editor. If you're not using Atom and don't want this to happen,
just delete line 84 (atom .) from the script and that's it.

Enjoy!
