"==========================
" Vundle Start
"==========================
filetype off                   " required!

if !isdirectory(expand("~/.vim/bundle/vundle"))
    !mkdir -p ~/.vim/bundle
    !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    let s:bootstrap=1
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Plugin Installing
Bundle 'gmarik/vundle'
Bundle 'The-NERD-Commenter'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'honza/snipmate-snippets'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/vimshell'
Bundle 'Shougo/vimproc'
Bundle 'surround.vim'
Bundle 'thinca/vim-quickrun'
Bundle 'mattn/zencoding-vim'
Bundle 'Shougo/unite.vim'
Bundle 'ujihisa/unite-colorscheme'
Bundle 'tsukkee/unite-tag'
Bundle 'ujihisa/unite-font'
Bundle 'unite-font'
Bundle 'vim-scripts/svn-diff.vim'
Bundle 'vim-scripts/Align'
Bundle 'ujihisa/neco-look'
Bundle 'thinca/vim-ref'
Bundle 'vim-jp/vimdoc-ja'
Bundle 'ack.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kana/vim-fakeclip'

Bundle 'wesleyche/SrcExpl'
Bundle 'vim-scripts/Trinity'
Bundle 'vim-scripts/taglist.vim'
Bundle 'scrooloose/nerdtree'

Bundle 'kana/vim-metarw'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/vim-metarw-simplenote'

Bundle 'vim-scripts/sudo.vim'
Bundle 'kchmck/vim-coffee-script'

if has('python')
    Bundle 'kakkyz81/evervim'
endif
Bundle 'Gist.vim'
Bundle 'tyru/open-browser.vim'
" Bundle 'joonty/vim-xdebug.git'
Bundle 'DBGp-client'

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

if exists("s:bootstrap") && s:bootstrap
    unlet s:bootstrap
    BundleInstall
endif

filetype plugin indent on     " required!

"==========================
" Vundle End
"==========================

set number
set title
set ruler

" tab
set tabstop=4
set expandtab
set softtabstop=0
set shiftwidth=4
set smarttab

set backspace=indent,eol,start

set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,cp932,sjis
"set fileencodings=utf-8,euc-jp,ucs-2,cp932,sjis,iso-2022-jp
set fileencodings=utf-8,ucs-bom,iso-2022-jp,euc-jp,cp932

filetype indent on
filetype plugin on
syntax on

colorscheme evening

set showcmd
set showmatch
set showmode

set smartindent
set ignorecase

"==========================
" tab
"==========================
set tabpagemax=20

"==========================
"java
"==========================
set sm
set ai
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

"==========================
"php
"==========================
let php_sql_query=1
let php_htmlInStrings=1
" let php_folding=1
autocmd Syntax php set fdm=syntax
autocmd filetype php :set makeprg=php\ -l\ % " :make で実行
autocmd filetype php :set errorformat=%m\ in\ %f\ on\ line\ %l 
" switch 文でインデントする
let g:PHP_vintage_case_default_indent = 1

"==========================
" plugin
"==========================
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0

let g:Align_xstrlen    = 3
let g:DrChipTopLvlMenu = ''


" 全角記号をずれないように
if exists('&ambiwidth')
    set ambiwidth=double
endif
autocmd FileType help nnoremap <buffer> q <C-w>c


" for Zendcoding (indent space size)
let g:user_zen_settings =  { 'indentation':'    ' }

"leaderを,に変更
let mapleader = ","

"ノーマルモードではセミコロンをコロンに。
" nnoremap ; :

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

" スワップファイルとバックアップファイル
set backup
if !isdirectory(expand("~/.vim/backup"))
    !mkdir -p ~/.vim/backup
endif
set backupdir=$HOME/.vim/backup
set swapfile
if !isdirectory(expand("~/.vim/tmp"))
    !mkdir -p ~/.vim/tmp
endif
set directory=$HOME/.vim/tmp

" search
set hlsearch
set incsearch

"==========================
" quickrun.vim
"==========================
" 初期化
let g:quickrun_config = {}

" PHPUnit
let g:quickrun_config['php.unit'] = {'command': 'phpunit'}
augroup QuickRunPHPUnit
    autocmd!
    autocmd BufWinEnter,BufNewFile test*.php set filetype=php.unit
    autocmd BufWinEnter,BufNewFile *Test.php set filetype=php.unit
augroup END

" coffee script
let g:quickrun_config['coffee'] = {'command' : 'coffee'}
" 保存時に自動コンパイル
autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!



"==========================
" colorscheme の設定
"==========================
set smartindent
syntax enable
set background=dark
colorscheme solarized

"==========================
" neocomplecache
"==========================
" enable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"==========================
" neosnippet
"==========================
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ?  "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ?  "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'

"==========================
" open-browser
"==========================
" カーソル下のURLをブラウザで開く
nmap <Leader>o <Plug>(openbrowser-open)
vmap <Leader>o <Plug>(openbrowser-open)
" ググる
nnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>
vnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>

" ==========================
" The-NERD-Commenter
" ==========================
let NERDSpaceDelims = 1

" 検索箇所を真ん中に
noremap n nzz
noremap N Nzz
noremap * *zz
noremap # #zz
noremap g* g*zz
noremap g# g#zz

"insertモードでjj押せばノーマルモードに。
inoremap jj <ESC>

" ==========================
" ever-vim
" ==========================
let g:evervim_splitoption=''
let g:evervim_devtoken='S=s999:U=9ee99c9:E=999d9999c99:C=99a99a99999:P=9cd:A=en-devtoken:H=cd99999de9999c99b999d99d999cb9f9'

" % の強化
source $VIMRUNTIME/macros/matchit.vim

" QuickFix を自動で開く (| cw の省略)
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif

" ctags
set tags=~/.tags,./tags,./TAGS,tags,TAGS

" tabnew
map <leader>t :tabnew<Space>

" sudo で開いていないファイルをsudoで保存する
cmap w!! %!sudo tee > /dev/null %

" vimfiler
let g:vimfiler_pedit_command = 'vnew'

" yank/paste/delete でクリップボードを使う required kana/vim-fakeclip
set clipboard=unnamed

" ==========================
" ruby
" ==========================
" 余分なスペースをハイライト
let ruby_space_errors=1

" Rubyのオムニ補完を設定(ft-ruby-omni)
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1


" ==========================
" ref.vim
" ==========================
nnoremap <Leader>rr :<C-U>Ref refe<Space>
nnoremap <Leader>rp :<C-U>Ref phpmanual<Space>

" ruby
let g:ref_refe_cmd = "rurema" " reqired rurema
let g:ref_refe_version = 2

" php
let g:ref_phpmanual_path = $HOME . '/dot_files/dictionary/php'
