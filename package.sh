#!/bin/bash

#prompt user for checking the package to be installed
read -p "Enter the package name to be checked for installation ?" package

#code to read the installation of the read package
if [ ! which "$package" > /dev/null 2>&1 ];then
    echo "$package is not installed "

    sudo apt-get install $package
    if [ $? == 0 ];then
        echo "$package installed properly now"
    fi
else
    echo "$package is installed"
fi



