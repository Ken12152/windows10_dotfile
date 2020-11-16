readonly MSYS2_SOURCE_PATH="${HOME}/.dotfiles"
readonly GITBASH_SOURCE_PATH="${HOME}/.dotfiles/GitBashSource"


#######################################################################
# Declare var SHELL_ENVIROMENT in bash.bashrc
if [ -n "$SHELL_ENVIROMENT" ]; then :
  #echo "This is $SHELL_ENVIROMENT"
else
  echo ${SHELL_ENVIROMENT:?}
  #echo "Attention: undeclared var \$SHELL_ENVIROMENT in bash.bashrc"
fi

#######################################################################



####################################################################################################
# Add "readonly SHELL_ENVIROMENT='MSYS2" into 'C:\msys64\etc\bash.bashrc' if use MSYS2
if [ "${SHELL_ENVIROMENT:=}" = 'MSYS2' ]; then

  # Custom prompt
  export PS1='\[\e]0;\w\a\]\n\[\e[01;32m\]\u@\h\[\e[0m\]: \[\e[01;34m\]\w\[\e[0m\]\n\$ '

  # Default prompt
  # export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n\$ '


  # .bashrc
  if [ -f "${MSYS2_SOURCE_PATH}/.bashrc" ]; then
    source "${MSYS2_SOURCE_PATH}/.bashrc"
  fi

  # bin/
  if [ -d "${MSYS2_SOURCE_PATH}/bin" ]; then
    PATH="${MSYS2_SOURCE_PATH}/bin:${PATH}"
  fi

fi

####################################################################################################

