# Declare var SHELL_ENVIROMENT in bash.bashrc
if [ -z "$SHELL_ENVIROMENT" ]; then
  echo "Attention: undeclared var \$SHELL_ENVIROMENT in bash.bashrc"
fi

#if [ -n "$SHELL_ENVIROMENT" ]; then
  #echo "This is $SHELL_ENVIROMENT"
#fi

# Add "declare -r SHELL_ENVIROMENT='MSYS2"
# in file 'C:\msys64\etc\bash.bashrc' if use MSYS2 shell system
if [ -n "$SHELL_ENVIROMENT" ] && [ "$SHELL_ENVIROMENT" = 'MSYS2' ]; then

  # ~/.bashrc Read once on login
  if [ -f "${HOME}/.bashrc" ] ; then
    source "${HOME}/.bashrc"
  fi

  # ~/bin Add path
  if [ -d "${HOME}/bin" ] ; then
    PATH="${HOME}/bin:${PATH}"
  fi

  # ------------------------------------------------------------------------------------------------
  # Default prompt setting
  # ------------------------------------------------------------------------------------------------
  # export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n\$ '

  # ------------------------------------------------------------------------------------------------
  # Custom prompt setting
  # ------------------------------------------------------------------------------------------------
  # export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n\$ '
  # export PS1='\[\e[01;32m\]\u@\h\[\e[0m\]: \[\e[01;34m\]\w\[\e[0m\]\n\$ '

  export PS1='\[\e]0;\w\a\]\n\[\e[01;32m\]\u@\h\[\e[0m\]: \[\e[01;34m\]\w\[\e[0m\]\n\$ '

  # ------------------------------------------------------------------------------------------------
fi

