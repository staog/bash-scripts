#!/bin/bash

clear

echo "
This script will install Node.js and npm on your computer.
Please, enter your password to continue.
"

# Update the repository index

sudo apt update

# Install build tools if you plan to compile and install native add-ons from npm

sudo apt install -y build-essential curl

# Add NodeJS PPA - NodeSource maintains Node.js binary packages for Ubuntu/Mint.
# To install Node.js v10.x - LTS

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

# After adding the PPA on your machine, install Node.js (npm will also be installed along Node.js)

sudo apt install -y nodejs

# To check the version of Node.js and npm you can enter "nodejs -v" command and "npm -v"
