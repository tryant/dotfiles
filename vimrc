" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" All plugins installed from vundle
source ~/.vim/vundle.vim

filetype plugin indent on " required!

let mapleader=','

" Small Custom functions
source ~/.vim/functions.vim

"Bindings
source ~/.vim/bindings.vim

" Vim Configurations
source ~/.vim/config.vim

" Auto commands
source ~/.vim/autocmds.vim
