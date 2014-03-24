#!/bin/bash

echo "# ===================================================================== #"
echo "# Current Memory:                                                       #"
echo "# ===================================================================== #"
free -m

echo "# ===================================================================== #"
echo "# Would you like to setup a SWAP-File?                                  #"
echo "# ===================================================================== #"
read -p "Yes or no? If you are unsure, please type 'no': " swap
if [[ $swap == [Yy][Ee][Ss] ]] ; then
    echo "# ===================================================================== #"
    echo "# Available sizes:                                                      #"
    echo "# 512mb 1gb 1.5gb 2gb 4gb                                               #"
    echo "# ===================================================================== #"
    read -p "Select a SWAP-File size: " size
    if [[ $size == [5][1][2][Mm][Bb] ]] ; then
        cd size && chmod +x 512mb.sh
        ./512mb.sh
    fi
    if [[ $size == [1][Gg][Bb] ]] ; then
        cd size && chmod +x 1gb.sh
        ./1gb.sh
    fi
    if [[ $size == [1][.][5][Gg][Bb] ]] ; then
        cd size && chmod +x 1_5gb.sh
        ./1_5gb.sh
    fi
    if [[ $size == [2][Gg][Bb] ]] ; then
        cd size && chmod +x 2gb.sh
        ./2gb.sh
    fi
    if [[ $size == [3][Gg][Bb] ]] ; then
        cd size && chmod +x 3gb.sh
        ./3gb.sh
    fi
    if [[ $size == [4][Gg][Bb] ]] ; then
        cd size && chmod +x 4gb.sh
        ./4gb.sh
    fi
fi
if [[ $swap == [Nn][Oo] ]] ; then
    echo "# ===================================================================== #"
    echo "# No SWAP-File was setup...                                             #"
    echo "# ===================================================================== #"
fi
