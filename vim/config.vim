" Colors
if (&term !~ '^linux$')
  set t_Co=256
endif

set background=dark
syntax enable

colorscheme ir_black
" colorscheme gruvbox
" colorscheme kolor

" solazired colorscheme
" let g:solarized_termcolors=256
" colorscheme solarized

" Tabs
call Tabstyle_auto()

" Indenting
set ai
set si

" Scrollbars
set scrolloff=3
set sidescroll=1
set sidescrolloff=7
set numberwidth=4

" Windows
set splitbelow splitright

" Cursor Highlights
set cursorline

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status Line
set showcmd
set showmode

" Always show Status Line
set laststatus=2

hi StatusLine ctermfg=white
hi StatusLineNC ctermfg=lightblue

set statusline=%f   " tail of the filename

" Display a warning if file encoding isn't utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h  " help file flag
set statusline+=%y  " filetype
set statusline+=%r  " read only flag
set statusline+=%m  " modified flag

" Display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%#warningmsg#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*

" Display a warning if we have trailing whitespace
set statusline+=%#warningmsg#
set statusline+=%{StatuslineTrailingSpaceWarning()}
set statusline+=%*

set statusline+=%=    " left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \  " current hightlight
set statusline+=%c    " cursor column
set statusline+=%l/%L " cursor line/total lines
set statusline+=\ %P  " precent through file

" Line Wrapping
set nowrap
set linebreak

" Insert New Line
set formatoptions-=r
set formatoptions-=o

" Sessions
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

" Misc
set history=1000
set backspace=indent,eol,start
set number
set vb t_vb=
set hidden
set updatecount=0

set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<
set nolist

set spelllang=en_us

" Mouse
set mouse=a
set ttymouse=xterm2

" Code Folding
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Nerd Commenter
let NERDSpaceDelims=1

" turbux
let g:turbux_command_prefix = 'bundle exec' " default: (empty)
let g:turbux_runner         = 'vim'

" use ag in vim
let g:agprg = 'ag --nogroup --nocolor --column'

" for vim-go
let g:go_disable_autoinstall = 0
