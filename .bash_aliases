# Temporary Alias while Production
source "${DOTFILES_PATH}/bin/working_directory/.working_directory"

#readonly working_directory=
#alias working="cd /d/Workspace/${working_directory}"

alias working="cd ${working_directory}"


alias fixtaiko='bash fixtaiko.sh'


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

# MongoDB
alias mongod='mongod --config "C:\\mongodb\\mongod.conf"'
