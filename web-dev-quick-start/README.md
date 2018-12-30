I've made this script to help me start fast when I want to do some web development on my Linux machine.

First of all, you need to make this file executable, i.e. right click on "run.sh" file, select "Properties", then under "Permissions" check "Allow executing file as program". Or you can change permissions using terminal command "sudo chmod 755 run.sh".
Then just double-click on a file and choose to run it in terminal.

You will have 3 options:

1. Print current working directory
2. List all the files and directories in your current directory
3. Create brand new directory for your project

If you choose third option, this script will make new directory with some basic files for your project, but first you need to pick a name for that directory. Inside of your newly created directory you will find index.html file (which will include base web page structure). There will also be css directory with main.css file (which will include Eric Meyer's reset) and js directory where you
will find main.js file (which will be almost empty ;)).
When that's done, it will open newly created project directory in Atom text editor. If you're not using Atom and don't want this to happen, just delete line 154 (atom .) from the script and that's it.

Enjoy!
