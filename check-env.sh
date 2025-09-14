#!/bin/bash
SCRIPTPATH=`dirname "$(readlink -f "$0")"`
cd $SCRIPTPATH 

if [ -d romulus ]; then
    echo romulus present
else
    cat romulus_{a,b,c,d,e,f,g}* > romulus.tar.bz2
    tar jxvf romulus.tar.bz2
fi 
