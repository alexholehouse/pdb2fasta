#!/bin/bash

## Alex Holehouse
## April 2014
## pdb2fasta v0.1
## 
## Installation script for pdb2fasta
##
## Script should be run as root, or if you wish to install in
## a non root directory pass the argumet "user" - i.e. 
##
##     bash install.sh user # will run without being root
##
##     bash install         # requires root (i.e. should be 
##                          # `sudo bash install`
##


###########################################
INSTALL_DIR="/usr/bin/"
###########################################

if [ "$#" -gt  "1" ]
then
    echo ""
    echo " Install script takes only a single argument (-u, to define userspace installation)"
    echo " To define where installation should occurr please edit the instal.sh file"
    echo ""
    echo " Exiting..."
    echo ""
    exit 1
fi


if [ "$#" -gt "0" ]
then
    arg1=$1
else
    arg1="nope"
fi

if [ "$UID" -ne 0 ] && [ $arg1 != "user" ]
then 
    echo "ERROR: Please run as root"
    exit
fi

echo "--------------------------------------------"
date
echo "  Installing executable to $INSTALL_DIR"
echo "--------------------------------------------"

cp pdb2fasta $INSTALL_DIR

echo "   [DONE]"
echo "--------------------------------------------"
cd ../

echo "Installation complete"
date
