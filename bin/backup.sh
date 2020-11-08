#!bin/bash

# backup bin script files
cp ~/bin ~/dotfile/ -r

# backup vim setting
cp ~/.vimrc ~/dotfile/.vimrc
cp ~/.vim/rc/dein.toml ~/dotfile/.vim/rc/dein.toml
cp ~/.vim/rc/dein_lazy.toml ~/dotfile/.vim/rc/dein_lazy.toml

# backup msys2 bash setting
cp ~/.bashrc ~/dotfile/.bashrc

cp ~/.bash_profile ~/dotfile/.bash_profile
cp ~/.bash_aliases ~/dotfile/.bash_aliases
cp ~/.bash_function ~/dotfile/.bash_function

# backup .gitconfig
cp ~/.gitconfig ~/dotfile/.gitconfig

# backup .wslconfig
cp ~/.wslconfig ~/dotfile/.wslconfig
