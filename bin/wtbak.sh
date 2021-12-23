#!bin/bash

# settings path
readonly settings_path='/c/Users/Felipe/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json'

# backup file path
readonly settings_dest='/c/Users/Felipe/.dotfiles/windows_terminal'


# settings
cp ${settings_path} ${settings_dest}


# log
echo "Date: `date`"
echo 'Created backup: '
echo ''

echo "----- settings -----"
ls -lF ${settings_dest} | grep -v ./ | grep -v total

