" Automatically load .vimrc source when saved
autocmd BufWritePost vimrc source $MYVIMRC

" Recalculate trailing whitespace warning when idle and after save
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

" Recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

" Set File type then update tab style
autocmd BufRead,BufNewFile *.txt set filetype=text
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.h set filetype=c
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.rs set filetype=rust
autocmd BufRead,BufNewFile *.js set filetype=javascript
autocmd BufRead,BufNewFile *.es6 set filetype=javascript
autocmd BufRead,BufNewFile Gemfile set filetype=ruby
autocmd BufRead,BufNewFile Guardfile set filetype=ruby
autocmd FileType * call Tabstyle_auto()

" Close vim if NERDTree only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
