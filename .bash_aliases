# temporary alia while to workspace
source "${DOTFILES_PATH}/datas/.working_directory"
alias working="cd ${working_directory}"


# fix taikojiro bug
alias tjfix='bash tjfix.sh'


# vscodebackup
alias vscodebackup='bash vscodeBackup.sh'


# general
alias vi='vim'

alias ls='ls --color -F'
alias la='ls -A'
alias ll='ls -la'

alias mk='touch'

alias work='cd /d/Workspace'
alias dotfiles='cd ~/.dotfiles'
alias desktop='cd /d/Desktop'
alias download='cd /d/Downloads'

alias relogin='exec $SHELL -l'

alias cls='clear'

alias clsworking="working && cls"

# MongoDB
alias mongod='mongod --config "C:\\mongodb\\mongod.conf"'
