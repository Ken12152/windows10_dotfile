if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

if [ -f "${HOME}/.bash_function" ]; then
  source "${HOME}/.bash_function"
fi

# virtual mount


if [ "$SHELL_ENVIROMENT" = 'MSYS2' ]; then
  # Setting shell colors
  # eval "$(dircolors -b /etc/DIR_COLORS)"
  eval "$(dircolors -b ~/DIR_COLORS)"
fi
