# Declare var _shellapplication in bash.bashrc
if [ -z "$_shellapplication" ]; then
  echo "Attention: undeclared var _shellapplication in bash.bashrc"
fi

if [ -n "$_shellapplication" ]; then
  echo "This is $_shellapplication"
fi

# Add "declare -r _shellapplication='MSYS2"
# in file 'C:\msys64\etc\bash.bashrc' if use MSYS2 shell system
if [ -n "$_shellapplication" ] && [ "$_shellapplication" = 'MSYS2' ]; then

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

