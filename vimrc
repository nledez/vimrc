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
Bundle 'https://github.com/Lokaltog/vim-powerline'

set laststatus=2
set encoding=utf-8
set t_Co=256
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_symbols = 'unicode'

" Git
" --------------------------------------------
Bundle 'tpope/vim-fugitive' 

" Color / GUI
" --------------------------------------------
Bundle 'https://github.com/tomasr/molokai.git'

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
Bundle 'https://github.com/tpope/vim-markdown.git'
" Bundle 'https://github.com/guileen/vim-node.git'
" Bundle 'https://github.com/myhere/vim-nodejs-complete.git'
Bundle 'https://github.com/vim-ruby/vim-ruby.git'
Bundle 'https://github.com/tpope/vim-rails.git'
" Bundle 'https://github.com/tpope/vim-bundler.git'

" Autoclose
" --------------------------------------------
Bundle 'https://github.com/Raimondi/delimitMate.git'

" TagBar to see classes
" --------------------------------------------
Bundle 'https://github.com/majutsushi/tagbar.git'

" Tabulations 
" --------------------------------------------
Bundle 'https://github.com/godlygeek/tabular.git'

" Ack
" --------------------------------------------
Bundle 'https://github.com/mileszs/ack.vim.git'


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
"Bundle 'https://github.com/ervandew/supertab.git'
"inoremap <expr> <Esc>  pumvisible() ? "\<C-e>" : "\<Esc>"
""" inoremap <expr> <CR>   pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"

" Matchit
" --------------------------------------------
Bundle 'https://github.com/tsaleh/vim-matchit.git'

" Vim-ruby
" --------------------------------------------
Bundle 'https://github.com/vim-ruby/vim-ruby'
Bundle 'https://github.com/ecomba/vim-ruby-refactoring.git'
Bundle 'https://github.com/tpope/vim-cucumber.git'
Bundle 'https://github.com/tpope/vim-haml.git'
Bundle 'https://github.com/tpope/vim-endwise.git'

" Vim-rails
" --------------------------------------------
Bundle 'https://github.com/tpope/vim-rails'
Bundle 'https://github.com/skwp/vim-rspec.git'
" Bundle 'https://github.com/tpope/vim-bundler.git'

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

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
