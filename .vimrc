imap <F2> <Esc>:w<CR>
map <F2> <Esc>:w<CR>

imap <F3> <Esc>:sh<CR>
map <F3> <Esc>:sh<CR>

imap <F4> <Esc>:tabnew .<CR> 
map <F4> <Esc>:tabnew .<CR>

imap <F5> <Esc> :tabprev <CR>
map <F5> :tabprev <CR>

imap <F6> <Esc> :tabnext <CR>
map <F6> :tabnext <CR>

imap <F7> <Esc> :set invnumber<CR>i
map <F7> <Esc> :set invnumber<CR>

nmap <F11> :NERDTreeToggle<CR>
imap <F11> <ESC>:NERDTreeToggle<CR>

"noremap <silent> <F11> :cal VimCommanderToggle()<CR>

colorscheme delek

"Set only tabs and set tabwidth=4
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

set mouse=a "Включить поддержку мыши
set backspace=indent,eol,start whichwrap+=<,>,[,]     "Удобное поведение backspace
set laststatus=2    "Always how status line
set nohlsearch        " highlight searches
set statusline=%<%f\ %m%r%y%=LINE:%l/%L\ (%p%%)\ \ COL:%c%V\ \ F:%{foldlevel('.')}

"Настройка omnicomletion для Python (а так же для js, html и css)
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


"Highlight trailing whitespaces at the end of line
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()

let python_highlight_all = 1


"Колоночка, чтобы показывать плюсики для скрытия блоков кода:
"set foldcolumn=1


