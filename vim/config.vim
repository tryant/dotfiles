" Colors
if (&term !~ '^linux$')
  set t_Co=256
endif

set background=dark
syntax on

" colorscheme ir_black

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

hi StatusLine ctermfg=white
hi StatusLineNC ctermfg=lightblue

set statusline=%f

set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h
set statusline+=%y
set statusline+=%r
set statusline+=%m

set statusline+=%#warningmsg#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*

set statusline+=#warningmsg#
set statusline+=%{StatuslineTrailingSpaceWarning()}
set statusline+=%*

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
