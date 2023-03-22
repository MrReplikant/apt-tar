#!/bin/bash

isRoot() {
        if [ "$EUID" -ne 0 ]; then
                echo "Must be run as root/with sudo"
                exit 1
        fi
}


install_program(){
chmod +x apt-tar
chmod +x installdebs.sh
mkdir /etc/apt-tar
mkdir /etc/apt-tar/backup
mkdir /etc/apt-tar/aptscripts
mkdir /etc/apt-tar/packages
cp apt-tar /usr/bin/apt-tar
cp installdebs.sh /etc/apt-tar/aptscripts/installdebs.sh
}


main(){
isRoot
install_program
}

main

echo "INSTALLATION SUCCESSFUL!"
