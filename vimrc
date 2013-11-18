" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" All plugins installed from vundle
source ~/.vim/vundle.vim

filetype plugin indent on " required!

" Switch syntax higlighting on, when the terminal has colors
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
	syntax on
endif

" Switch wrap off for everthing
set nowrap

" Only do this part when compiled with support for autocommands
if has("autocmd")
	" Set File type to 'text' for files ending in .txt
	autocmd BufNewFile,BufRead *.txt setfiletype text

	" Enable soft-wrapping for text files
	autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebrack nolist

	" Put these in autocmd group, so that we can delete them easily
	augroup vimrcEx
	au!

	" For all text files set 'textwidth' to 72 characters.
	autocmd FileType text setlocal textwidth=72

	" Automatically load .vimrc source when saved
	autocmd BufWRitePost .vimrc source $MYVIMRC

	augroup END

else

	set autoindent              " always set autoindenting on

endif " has("autocmd")

" Softabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Always display the status line
set laststatus=2

" \ is the leader character
let mapleader = ","

" Use Ack instead of Grep when available
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor\ --ignore-dir=tmp\ --ignore-dir=coverage
endif

" Numbers
set number
set numberwidth=5

" Open URL
command -bar -nargs=1 OpenUrl :!open <args>
function! OpenURL()
	let s:uri = matchstr(getline("."), '[a-z[*:\/\/[^ >,;:\*')
	echo s:uri
	if s:uri != ""
		exec "!open \"" . s:uri . "\""
	else
		echo "No URI found in line."
	endif
endfunction
