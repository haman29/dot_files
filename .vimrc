set number
set title
set ruler

set tabstop=4
set expandtab
set softtabstop=0
set shiftwidth=4
set smarttab

set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,cp932,sjis
set fileencodings=utf-8,euc-jp,utf-8,ucs-2,cp932,sjis

filetype indent on
filetype plugin on
syntax on

colorscheme evening 

set showcmd
set showmatch 
set showmode

set nobackup
set smartindent 
set incsearch 
set ignorecase 

set tabpagemax=20

"java
set sm
set ai
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

"php
let php_sql_query=1
let php_htmlInStrings=1
let php_noShortTags=1
let php_folding=1 "$B4X?t!$%/%i%9$r<+F0@^$j$?$?$_(B
au Syntax php set fdm=syntax
autocmd filetype php :set makeprg=php\ -l\ %
autocmd filetype php :set errorformat=%m\ in\ %f\ on\ line\ %l 

"plugin
let g:neocomplcache_enable_at_startup = 1

if exists('&ambiwidth')
    set ambiwidth=double
endif

autocmd FileType help nnoremap <buffer> q <C-w>c

" for Zendcoding (indent space size)
let g:user_zen_settings =  { 'indentation':'    ' }

"leaderを,に変更
let mapleader = ","

"ノーマルモードではセミコロンをコロンに。
nnoremap ; :

"==========================
"special Key 
"==========================
set list
set listchars=tab:>-,trail:-,extends:<,precedes:<
highlight specialKey ctermfg=darkgray

" jk を gj gk に
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" ESCでIMEを確実にOFF
inoremap <ESC> <ESC>:set iminsert=0<CR>
