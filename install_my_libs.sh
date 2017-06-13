#!/bin/sh
# reinstall all my packages
cd ~/Dropbox/src
for folder in 'pyciss' 'planet4' 'pyuvis' 'hirise_tools' 'nbtools' 'planetpy' 'pysis' 'p4terrains';
    do cd $folder;
    echo "Installing $folder";
    echo;
    pip install -e .;
    cd .. ;
    echo;
done
# reinstall packages from pip that are needed
pip install -r pip_packages_to_install.txt
