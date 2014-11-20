" Open URL
function! OpenUrl()
  let s:uri = matchstr(getline("."), '[a-z[*:\/\/[^>,;:\*')
  echo s:uri
  if s:uri != ""
    exec "!open \"" . s:uri . "\""
  else
    echo "No URI found in line."
  endif
endfunction
command -bar -nargs=1 OpenUrl :!open <args>

" Strip Trailing White Space
function! Preserve(command)
  " Preparation: save last searc, and cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
command! StripTrailingWhiteSpace :call Preserve("%s/\\s\\+$//e")
map <leader>s :StripTrailingWhiteSpace<CR>

" Jump to last cursor position
function! SetCursorPosition()
  if line("'\"") > 0 && line("'\"") <= line("$")
    exe "normal g`\""
  endif
endfunction

function! StatuslineTabWarning()
  if !exists("b:statusline_tab_warning")
    let tabs = search('^\t', 'nw') != 0
    let spaces = search('^ ', 'nw') != 0

    " Don't do this for C files
    if (&ft == 'c') || (&ft == 'cpp')
      return ''
    endif

    if tabs && spaces
      let b:statusline_tab_warning = '[mixed-indenting]'
    elseif (spaces && !&et) || (tabs && &et)
      let b:statusline_tab_warning = '[&et]'
    else
      let b:statusline_tab_warning = ''
    endif
  endif
  return b:statusline_tab_warning
endfunction

function! StatuslineTrailingSpaceWarning()
  if !exists("b:statusline_trailing_space_warning")
    if search('\s\+$', 'nw') != 0
      let b:statusline_trailing_space_warning = '[trailing_whitespace]'
    else
      let b:statusline_trailing_space_warning = ''
    endif
  endif
  return b:statusline_trailing_space_warning
endfunction

function! StatuslineCurrentHighlight()
  let name = synIDattr(synID(line('.'),col('.'),1),'name')
  if name == ''
    return ''
  else
    return '[' . name . ']'
  endif
endfunction

function! Tabstyle_tabs()
  " Use 4-column tabs
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set noexpandtab
endfunction

function! Tabstyle_2_spaces()
  " Use 2 spaces
  set softtabstop=2
  set shiftwidth=2
  set tabstop=2
  set expandtab
endfunction

function! Tabstyle_4_spaces()
  "Use 4 spaces
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set expandtab
endfunction

function! Tabstyle_auto()
	if (&ft == 'c') || (&ft == 'cpp') || (&tf == 'make') || (&ft == 'sh') || (&ft == 'awk')
		call Tabstyle_tabs()
  elseif (&ft == 'php') || (&ft == 'js')
    call Tabstyle_4_spaces()
  else
		call Tabstyle_2_spaces()
	endif
endfunction
