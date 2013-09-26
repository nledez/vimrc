set nocompatible          " be iMproved
filetype off              " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

filetype plugin indent on     " required!
syntax enable

" Powerline
" --------------------------------------------
Bundle 'Lokaltog/vim-powerline'

set laststatus=2
set encoding=utf-8
set t_Co=256
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_symbols = 'unicode'

" Git
" --------------------------------------------
Bundle 'tpope/vim-fugitive' 
" Fugitive {
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>:GitGutter<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>:GitGutter<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gg :GitGutterToggle<CR>
"}

" Color / GUI
" --------------------------------------------
Bundle 'tomasr/molokai'

" set guifont=Monaco:h12
set background=dark 
colors molokai
set cursorline        " highlight current line
highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none


" Syntax checker
" --------------------------------------------
Bundle 'scrooloose/syntastic',
let g:syntastic_check_on_open=1

" Syntax
" --------------------------------------------
Bundle 'tpope/vim-markdown'
" Bundle 'guileen/vim-node'
" Bundle 'myhere/vim-nodejs-complete'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
" Bundle 'tpope/vim-bundler'
Bundle 'elzr/vim-json'

" Autoclose
" --------------------------------------------
Bundle 'Raimondi/delimitMate'

" TagBar to see classes
" --------------------------------------------
Bundle 'majutsushi/tagbar'

" Tabulations 
" --------------------------------------------
Bundle 'godlygeek/tabular'

" Ack
" --------------------------------------------
Bundle 'mileszs/ack.vim'


" Ctrl P 
" --------------------------------------------
Bundle 'kien/ctrlp.vim'
let g:ctrlp_max_height = 25
let g:ctrlp_max_files = 90000
let g:ctrlp_clear_cache_on_exit = 1

" Line Number
" --------------------------------------------
"Bundle 'jeffkreeftmeijer/vim-numbertoggle'
"let g:NumberToggleTrigger="<F3>"

"" Supertab
" --------------------------------------------
"Bundle 'ervandew/supertab'
"inoremap <expr> <Esc>  pumvisible() ? "\<C-e>" : "\<Esc>"
""" inoremap <expr> <CR>   pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"

" Matchit
" --------------------------------------------
Bundle 'tsaleh/vim-matchit'

" Vim-ruby
" --------------------------------------------
Bundle 'vim-ruby/vim-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rbenv'

" Vim-rails
" --------------------------------------------
Bundle 'tpope/vim-rails'
Bundle 'skwp/vim-rspec'
" Bundle 'tpope/vim-bundler'

" Vim-surround
" --------------------------------------------
Bundle 'tpope/vim-surround'

"source ~/.vim/global.vim
"source ~/.vim/bindings.vim
"source ~/.vim/plugins.vim

" Other config
" --------------------------------------------
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
let $LANG = 'en_US'

set number

" So what, I can't type...
nmap :W :w
nmap :X :x
nmap :Q :q

" Only do this part when compiled with support for autocommands.
if has("autocmd")
	" When editing a file, always jump to the last known cursor position.
	autocmd BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
		\ endif
endif " has("autocmd")"

if filereadable(expand("~/.vim_local"))
  source ~/.vim_local
endif

syntax on
filetype on
filetype indent on
filetype plugin on
autocmd FileType ruby
	\ set expandtab |
	\ set tabstop=2 shiftwidth=2 softtabstop=2 |
	\ set autoindent

au BufRead,BufNewFile *.json set filetype=json

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" .vimrc.after is loaded after the plugins have loaded
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>"

:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>

:nmap ; :CtrlPBuffer<CR>

":let g:ctrlp_map = '<Leader>t'
":let g:ctrlp_match_window_bottom = 0
":let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" Les touches fléchées sont désactivées.
" Utile pour apprendre vim.
"
" En mode normal, vous pourrez les utiliser plus tard
" pour faire quelque chose d'utile.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" En mode insertion, vous pourrez enlever la
" désactivation dans quelques semaines.
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
