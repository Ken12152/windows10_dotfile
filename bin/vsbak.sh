#!bin/bash

# settings path
readonly settings_path='/c/Users/Felipe/AppData/Roaming/Code/User/settings.json'
readonly keybindings_path='/c/Users/Felipe/AppData/Roaming/Code/User/keybindings.json'

# user snippets path
readonly snippets_path='/c/Users/Felipe/AppData/Roaming/Code/User/snippets/*'

# backup file path
readonly settings_dest='/c/Users/Felipe/.dotfiles/vscode/'
readonly snippets_dest='/c/Users/Felipe/.dotfiles/vscode/snippets/'


# settings
cp ${settings_path} ${settings_dest}
cp ${keybindings_path} ${settings_dest}


# user snippets
cp ${snippets_path} ${snippets_dest}


# log
echo "Date: `date`"
echo 'Created backup: '
echo ''

echo "----- settings -----"
ls -lF ${settings_dest} | grep -v ./ | grep -v total

echo ''
echo "----- snippets -----"
ls -lF ${snippets_dest} | grep -v ./ | grep -v total
