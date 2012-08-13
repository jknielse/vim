#!/bin/bash
#setup.sh - this is a default setup script to make the process of making these
#           for other applications easier.

. ~/.libs/colours

function setup {
    bldylw
    echo "    Copying the vimrc file to ~/"
    cp ./.vimrc ~/
    bldgrn
    echo "    Done"

    #after everything else, this is probably the last step.
    bldylw
    echo "    Updating installation status"
    echo 0 > ./installation_status
    bldgrn
    echo "    Done"
    bldgrn
    echo "Installation Successful"
}


bldylw
echo -n "Installing "
bldblu
cat ./program_name
if [[ -e ./installation_status ]]
then
    if [[ `cat ./installation_status` == "0" ]]
    then
        bldylw
        echo "    Program aready installed"
        bldgrn
        echo "Installation Successful"
    else
        setup
    fi
else
    setup
fi
txtrst
