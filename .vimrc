"Basic stuff
filetype off
syntax on
syntax enable
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf-8
set fileencoding=utf-16
set shell=zsh\ -l
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on



let mapleader=','
set t_Co=256
set background=dark
set cursorline
set nocompatible
set autochdir
set backup
set noswapfile
set undofile
set backupdir=~/.vim/.vimbackup/
set directory=~/.vim/.vimswap/
set undodir=~/.vim/.vimundo/
set tags=./tags,tags;$HOME
set clipboard=unnamed
set incsearch
set showmatch
set smartcase
set ignorecase
set hlsearch
set hidden
"set foldmethod=indent
"set foldmethod=syntax
"set foldnestmax=10
"set nofoldenable
"set foldlevel=0
set showcmd
set ruler
set visualbell noerrorbells t_vb=
set autowrite
set backspace=indent,eol,start
set expandtab   shiftwidth=4 softtabstop=4
set number
set linebreak
set laststatus=2
set ft=messages
set ft=nginx
set autoindent
set cindent
set tabstop=4                   
               
set showmode
set virtualedit=onemore 
set shiftround
set timeout
set timeoutlen=300
set ttimeoutlen=100
set wildmenu
set wildmode=full
filetype plugin indent on

"Bundles 
"Plugin 'vim-twig'
"Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-airline'
Plugin 'chriskempson/base16-vim'
"Plugin 'tabular'
"Plugin 'PIV'
Plugin 'posva/vim-vue'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'xsbeats/vim-blade'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'nelsyeung/twig.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mru.vim'
Plugin 'taglist.vim'
Plugin 'AutoClose'
Plugin 'The-NERD-Commenter'
Plugin 'surround.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'ctrlp.vim'
Plugin 'snipMate'
Plugin 'Rename'
Plugin 'Syntastic'
Plugin 'joonty/vdebug.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nginx.vim'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'


"let php_folding = 1        "Set PHP folding of classes and functions.
let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.
let php_noShortTags = 1    "Disable PHP short tags.
"Bundle custom settings
let MRU_Max_Entries=20
let MRU_Max_Menu_Entries=10
let NERDTreeShowBookmarks=1
"let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=2
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
"let g:airline_left_sep = '⮀'
"let g:airline_right_sep = '⮂'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:ctrlp_extensions = ['funky']
let g:ctrlp_max_depth =400
let g:ctrlp_working_path_mode =""
let g:ctrlp_max_files =0
let g:ctrlp_clear_cache_on_exit = 0
let g:airline_theme = "badwolf"
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_nolim = 1
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
"g:editorconfig_Beautifier . 

au BufRead,BufNewFile,FileType *.coffee set ft=coffee
au BufRead,BufNewFile,FileType *.twig set ft=twig.php.html
au BufRead,BufNewFile,FileType *.rst set ft=php
au BufRead *.pdf sil exe "!xdg-open " . shellescape(expand("%:p")) | bd | let &ft=&ft | redraw!
au BufRead *.png sil exe "!xdg-open " . shellescape(expand("%:p")) | bd | let &ft=&ft | redraw!
au BufRead *.jpg sil exe "!xdg-open " . shellescape(expand("%:p")) | bd | let &ft=&ft | redraw!
au BufRead,BufNewFile,FileType *.md set ft=markdown
autocmd BufNewFile,BufRead *.blade.php set filetype=blade.php.html " Fix blade auto-indent
autocmd BufNewFile,BufRead *.vue set filetype=vue " Fix blade auto-indent
autocmd BufNewFile,BufRead *.jade set filetype=jade " Fix blade auto-indent

augroup ctrlp-funky
  au!
  au BufEnter ControlP setlocal number
augroup END


" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "psr2"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.


"mappings and my custom settings
colorscheme badwolf

imap jj <esc>:w<esc>
map Q <Nop>
nnoremap mm :MRU<esc>
nnoremap mm :MRU<esc>
nnoremap <Leader>tt :CtrlPBufTag<esc>
nnoremap ne :NERDTreeToggle<esc>
nnoremap .. :NERDTree %<esc>
nnoremap j gj
nnoremap k gk
nnoremap sh :!
nnoremap so :source $MYVIMRC<esc>
nnoremap pp "*p<esc>
nnoremap :cd :cd %:p:h
imap <C-j> <C-o>e

"movement in insert mode
imap ,a <esc>A
imap ,i <esc>I
imap ,b <esc>bi
imap ,w <esc>wwi

map <C-f> :CtrlPFunky<esc>

"toggle folds
map fo za
"open one folds
map fr zR
"close all folds
map fm zM

"key for phpunit
nmap ,d :bd<esc>
nmap ,h :noh<esc>
nmap ,do :%bd <esc>
nmap ,q :q <esc>
nmap ,e <esc><esc>
nmap ,f :!php-cs-fixer fix --using-cache=no % <esc>
"nmap ,f :!~/.composer/vendor/bin/php-cs-fixer fix --using-cache=no % <esc>
"nmap ,f :!~/.composer/vendor/bin/php-cs-fixer fix % <esc>
nmap ,t :!clear && ~/.composer/vendor/bin/phpunit --colors --configuration="../" %<esc>
nmap ,c :!clear && gcc % && ./a.out<esc>
nmap ,cp :!clear && g++ % && ./a.out<esc>
nmap ,s ysiw
"test one method
"nmap ,m yiw:!phpunit --filter ^R"^M^M<cr>

"key for php cli
nmap ,p :!clear && php %<cr>
nmap ,j :!clear && node %<cr>
"key for js-node
"nmap ,n :!clear && node %<cr>
nmap vv ggVG
nmap ,w :w<esc> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
set mouse=a
set nowrap


if has("autocmd")
     autocmd BufReadPost *
     \ if line("'\"") > 0 && line ("'\"") <= line("$") |
     \   exe "normal g`\"" |
     \ endif
endif

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

map html :call HtmlBeautify()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>uu <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>uu :call PhpExpandClass()<CR>
"autocmd BufEnter * lcd %:p:h
"autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
"autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | cd %:p:h | NERDTreeCWD | wincmd p | endif







"Some experiments
"function example with input
"function! A()
    "let namespace = input("namespace name is: ")
    "let class = input("class name is: ")
    "let method = input("method name is: ")
    "exec "normal i" . namespace . class . method 
                    "\ method
"endfunction

"command for function calling
"command! C :call A()
"abbrev
"iabbrev id class
"autocommands
"autocmd FileType php syntax off

"go to last position in a file

"function! SetPhPOptions()
    "setlocal nonumber 
"endfunction
"Hello World
