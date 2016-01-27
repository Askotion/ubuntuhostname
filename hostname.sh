#!/bin/bash


# Test if the user puts a Argument
if [[ $# -eq 0 ]] ; then
    echo 'You have to define in a Hostname!'
    echo 'Usage: ./hostname.sh <hostname> '
    exit 0
fi

# Removing log from last time
rm log.txt

# Updating and Upgrading Server
apt-get update >> log.txt
apt-get -y upgrade >> log.txt


# Saving Argument 1 in Textfile
echo $1 >> var.txt

# Grepping Argument out of the File into a variable
ip=$(cat var.txt)


# Replacing Hostname with Argument
function hostname () {
hostn=$(cat /etc/hostname) &&
sed -i "s/$hostn/$ip/g" /etc/hosts &&
sed -i "s/$hostn/$ip/g" /etc/hostname
}

# Executing Function
hostname

# Removing Text File
rm var.txt

# Rebooting
reboot
