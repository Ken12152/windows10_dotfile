readonly CUSTOM_SETTING_TYPE='default'

if [ -n "$CUSTOM_SETTING_TYPE" ]; then :
  #echo "This is $SHELL_ENVIROMENT"
else
  echo ${CUSTOM_SETTING_TYPE?}
  #echo "Attention: undeclared var \$SHELL_ENVIROMENT in bash.bashrc"
fi


#######################################################################
# .dotfiles folder path
readonly DOTFILES_PATH="${HOME}/.dotfiles"


#######################################################################
# default setting:
if [ "${CUSTOM_SETTING_TYPE:=}" = 'default' ]; then

  # git-prompt.sh: make prompt show current branch
  source "${DOTFILES_PATH}/git/git-prompt.sh"

  # git-completion: enable auto complement git command
  source "${DOTFILES_PATH}/git/git-completion.bash"


  # Default prompt
  # export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n\$ '

  # Custom prompt
  export PS1='\[\e]0;\w\a\]\n\[\e[01;32m\]\u@\h\[\e[0m\]: \[\e[01;34m\]\w\[\e[01;33m\]`__git_ps1`\[\e[0m\]\n\$ '


  # read .bashrc
  source "${DOTFILES_PATH}/.bashrc"

  # bin/
  PATH="${DOTFILES_PATH}/bin:${PATH}"

fi

# Add custom settings for some environment here ...
#
#


####################################################################################################
# security
alias rm='rm -i'
