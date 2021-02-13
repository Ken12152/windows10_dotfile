#!bin/bash

readonly sourcePath='/c/Users/Felipe/AppData/Roaming/Code/User/settings.json'
readonly dest='/c/Users/Felipe/.dotfiles/etc/vscode_settings/'

cp ${sourcePath} ${dest}
