#!bin/bash

readonly settingsPath='/c/Users/Felipe/AppData/Roaming/Code/User/settings.json'
readonly keybindingsPath='/c/Users/Felipe/AppData/Roaming/Code/User/keybindings.json'
readonly dest='/c/Users/Felipe/.dotfiles/etc/vscode_settings/'

cp ${settingsPath} ${dest}
cp ${keybindingsPath} ${dest}

#echo "`date`: create settings.json, keybindings.json backups."
echo "Date: `date`"
echo "Created settings.json, keybindings.json backups."
