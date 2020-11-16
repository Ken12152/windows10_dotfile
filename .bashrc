# .bash_aliases
if [ -f "${MSYS2_SOURCE_PATH}/.bash_aliases" ]; then
  source "${MSYS2_SOURCE_PATH}/.bash_aliases"
fi

# .bash_function
if [ -f "${MSYS2_SOURCE_PATH}/.bash_function" ]; then
  source "${MSYS2_SOURCE_PATH}/.bash_function"
fi

# .dircolors
if [ -f "${MSYS2_SOURCE_PATH}/.dircolors" ]; then
  eval "$(dircolors -b ${MSYS2_SOURCE_PATH}/.dircolors)"
fi


