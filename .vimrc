"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype off

call pathogen#infect()
call pathogen#helptags()

"Включаем распознавание типов файлов и типо-специфичные плагины:
filetype on
filetype plugin on
filetype plugin indent on

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

imap <F9> <Esc> :lclose<CR>i
map <F9> <Esc> :lclose<CR>

map <leader>p8 :PyLintAuto<CR>

nmap <F10> :TagbarToggle<CR>

nmap <F11> :NERDTreeToggle<CR>
imap <F11> <ESC>:NERDTreeToggle<CR>

nmap J <C-f>
nmap K <C-b>

nnoremap <silent> Q    :<C-U>bdelete<CR>

noremap <C-P> :set invpaste<CR>
inoremap <C-P> <Esc>:set invpaste<CR>i

"Git related keys
nmap gs :Gstatus<CR>
nmap gd :Gdiff<CR>
nmap gc :Gcommit<CR>

colorscheme delek

"color column 80, this will colorize 80-th column to easily find too long
"lines of code
set colorcolumn=80

"Set only tabs and set tabwidth=4
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

set mouse=a "Включить поддержку мыши
set backspace=indent,eol,start whichwrap+=<,>,[,]     "Удобное поведение backspace
set laststatus=2    "Always show status line
set nohlsearch        " highlight searches

let NERDTreeIgnore=['\.pyc$']

"Настройка omnicomletion для Python (а так же для js, html и css)
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS


"Авто комплит по табу
"function InsertTabWrapper()
"let col = col('.') - 1
"if !col || getline('.')[col - 1] !~ '\k'
"return "\"
"else
"return "\<c-p>"
"endif
"endfunction
"imap <c-r>=InsertTabWrapper() "Показываем все полезные опции автокомплита сразу
"set complete=""
"set complete+=.
"set complete+=k
"set complete+=b
"set complete+=t


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
set t_Co=256

"-------Python Mode----------
let g:pymode = 1
" Disable python folding
let g:pymode_folding = 0
" Key for show python documentation
let g:pymode_doc_bind = '<F1>'
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_cwindow = 1
let g:pymode_lint_signs = 1
" let g:pymode_lint_checker = "pylint,pyflakes,pep8,mccabe,pep257"
" let g:pymode_lint_ignore = "E501,C0301"
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 5

let g:pymode_options_max_line_length = 79
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0

let g:pymode_syntax_all = 1
let g:pymode_python = 'python3'

" Add basic integration with odoo-helper-scripts
if executable('odoo-helper')
    call system('odoo-helper system is-project')
    if v:shell_error == 0
        let virtualenv_path = system('odoo-helper system get-venv-dir')
        let virtualenv_path = substitute(virtualenv_path, '\n\+$', '', '')
        let g:pymode_virtualenv_path = virtualenv_path
        let g:pymode_lint_options_pylint = {'max-line-length': g:pymode_options_max_line_length}
    endif
endif 

let g:pymode_breakpoint_cmd = 'import pudb; pudb.set_trace()'

"Колоночка,<C> чтобы показывать плюсики для скрытия блоков кода:
"set foldcolumn=1
"set foldmethod=syntax

