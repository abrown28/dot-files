" defaults2
:set ts=4 sw=4 autoindent
:set noexpandtab
:set pastetoggle=<C-p>
:set background=dark
:set incsearch
:set ignorecase
:set smartcase
:set wildmode=longest,list
:set scrolloff=4
:set hlsearch
:set cindent
":set number
:set enc=utf-8
":set mouse=a
":set clipboard=unnamed
":set clipboard=unnamedplus

" Autocomplete for php
"set omnifunc=phpcomplete#CompletePHP

" set some custom tab spacings
autocmd BufRead         *.xsl   set ts=4 sw=4 expandtab autoindent
autocmd BufRead         *.php   set ts=4 sw=4 noexpandtab autoindent
autocmd BufRead         *.tpl   set ts=4 sw=4 expandtab autoindent

" Automatically chmod +x Shell and Perl scripts
autocmd BufWritePost    *.sh    !chmod +x %
autocmd BufWritePost    *.pl    !chmod +x %

" read/write a .viminfo file, don't store more than 1000 lines of registers
set viminfo='20,\"1000

" don't show help when F1 is pressed
map <F1> <ESC>
"ignoremap <F1> <ESC>

"Open file at last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif

"---------+
" Comments \
"-----------+

map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>
map ,> :s/^/> /<CR>
map ,! :s/^/!/<CR>
map ,; :s/^/;/<CR>
map ,- :s/^/--/<CR>
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>

" Common Command Typos
command! Q  quit    " converts ... :Q  => :q
command! W  write   " converts ... :W  => :w
command! Wq wq      " converts ... :Wq => :wq
command! Wn wn      " converts ... :Wn => :wn
command! WN wN      " converts ... :WN => :wN


syntax on
