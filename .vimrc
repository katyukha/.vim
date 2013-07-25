"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype off

call pathogen#infect()
call pathogen#helptags()

"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype on
filetype plugin on


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

imap <F8> <Esc> :set invhlsearch<CR>i
map <F8> <Esc> :set invhlsearch<CR>

imap <F9> <Esc> :PyLintWindowToggle<CR>i
map <F9> <Esc> :PyLintWindowToggle<CR>

map <leader>p8 :PyLintAuto<CR>

nmap <F10> :TagbarToggle<CR>

nmap <F11> :NERDTreeToggle<CR>
imap <F11> <ESC>:NERDTreeToggle<CR>

nmap J <C-f>
nmap K <C-b>

nnoremap <silent> Q    :<C-U>bdelete<CR>

noremap <C-p> :set invpaste<CR>
inoremap <C-p> <Esc>:set invpaste<CR>i

"Git related keys
nmap gs :Gstatus<CR>
nmap gd :Gdiff<CR>
nmap gc :Gcommit<CR>
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
set statusline=%<%f\ %m%r%y\ \|\ %{fugitive#statusline()}%=LINE:%l/%L\ (%p%%)\ \ COL:%c%V\ \ F:%{foldlevel('.')}

let NERDTreeIgnore=['\.pyc$']

"Настройка omnicomletion для Python (а так же для js, html и css)
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


"Авто комплит по табу
function InsertTabWrapper()
let col = col('.') - 1
if !col || getline('.')[col - 1] !~ '\k'
return "\"
else
return "\<c-p>"
endif
endfunction
imap <c-r>=InsertTabWrapper() "Показываем все полезные опции автокомплита сразу
set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t


"Highlight trailing whitespaces at the end of line
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()

let python_highlight_all = 1

"Включаем 256 цветов в терминале, мы ведь работаем из иксов?
"Нужно во многих терминалах, например в gnome-terminal
"set t_Co=256

"-------Python Mode----------
" Disable python folding
let g:pymode_folding = 0
" Key for show python documentation
let g:pymode_doc_key = '<F1>'
let g:pymode_lint_checker = "pylint,pyflakes,pep8,mccabe"
"Колоночка,<C> чтобы показывать плюсики для скрытия блоков кода:
"set foldcolumn=1
"set foldmethod=syntax

