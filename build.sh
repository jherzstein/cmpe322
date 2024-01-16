#!/bin/bash
emacs -Q --script ./build-site.el
read -r -p "Do you want to sync changes to the server and update git? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    git add .
    git commit -m "auto updating site"
    git push origin master
else
    exit 0
fi
