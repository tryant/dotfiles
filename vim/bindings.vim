" Bindings
imap jj <Esc>

" Toggle spell check
nmap <silent> <leader>z :set spell!<CR>

" Start a search and replace for current word
map <Leader>rw :%s/\<<C-r><C-w>\>/

" Insert new line without going into insert mode
map <F9> O<Esc>
map <F8> o<Esc>

" map NERDtree shortcut
map <C-n> :NERDTreeToggle<CR>

" Run all specs
map <Leader>rsa :call Send_to_Tmux("bundle exec rspec spec\n")<CR>

" Run all specs/features
map <Leader>rsf :call Send_to_Tmux("bundle exec rspec spec/features\n")<CR>
