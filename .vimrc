" Import dein plugins ( this need to import in the begnning )
source ~/.dotfiles/vim/.vimrc.dein

" Import plugins settings
source ~/.dotfiles/.vimrc.plugins

filetype plugin indent on



" Import general settings
source ~/.dotfiles/.vimrc.general

" Import keybinding settings
source ~/.dotfiles/.vimrc.keybind

" Import color settings
source ~/.dotfiles/.vimrc.color



" Reload automatically .vimrc after save ~/.vimrc.* file
augroup auto_reload_vimrc
	autocmd!

	" in case symbolic link
	autocmd BufWritePost ~/.vimrc source $MYVIMRC
	autocmd BufWritePost ~/.vimrc.general source $MYVIMRC
	autocmd BufWritePost ~/.vimrc.keybind source $MYVIMRC
	autocmd BufWritePost ~/.vimrc.color source $MYVIMRC
	autocmd BufWritePost ~/.vimrc.plugins source $MYVIMRC


	" ~/.dotfiles/
	autocmd BufWritePost ~/.dotfiles/.vimrc source $MYVIMRC
	autocmd BufWritePost ~/.dotfiles/.vimrc.general source $MYVIMRC
	autocmd BufWritePost ~/.dotfiles/.vimrc.keybind source $MYVIMRC
	autocmd BufWritePost ~/.dotfiles/.vimrc.color source $MYVIMRC
	autocmd BufWritePost ~/.dotfiles/.vimrc.plugins source $MYVIMRC

augroup END


