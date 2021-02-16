#######################################################################
# Declare var SHELL_ENVIROMENT in bash.bashrc
if [ -n "$SHELL_ENVIROMENT" ]; then :
  #echo "This is $SHELL_ENVIROMENT"
else
  echo ${SHELL_ENVIROMENT:?}
  #echo "Attention: undeclared var \$SHELL_ENVIROMENT in bash.bashrc"
fi


#######################################################################
# .dotfiles dir path
readonly DOTFILES_PATH="${HOME}/.dotfiles"


####################################################################################################
# Add "readonly SHELL_ENVIROMENT='MSYS2" into 'C:\msys64\etc\bash.bashrc' if use MSYS2
if [ "${SHELL_ENVIROMENT:=}" = 'MSYS2' ]; then

  # git-prompt.sh show git branch in prompt
  source "${DOTFILES_PATH}/git/git-prompt.sh"

  # git-completion auto complement git command
  source "${DOTFILES_PATH}/git/git-completion.bash"


  # Custom prompt
  export PS1='\[\e]0;\w\a\]\n\[\e[01;32m\]\u@\h\[\e[0m\]: \[\e[01;34m\]\w\[\e[01;33m\]`__git_ps1`\[\e[0m\]\n\$ '

  # Default prompt
  # export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n\$ '


  # .bashrc
  source "${DOTFILES_PATH}/.bashrc"

  # bin/
  PATH="${DOTFILES_PATH}/bin:${PATH}"

fi

####################################################################################################
# security
alias rm='rm -i'

