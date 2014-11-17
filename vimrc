set nocompatible          " be iMproved
filetype off              " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'https://github.com/gmarik/vundle.git'

" Snipmate
" --------------------------------------------
Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Bundle "https://github.com/tomtom/tlib_vim.git"
Plugin 'https://github.com/garbas/vim-snipmate.git'
Plugin 'https://github.com/honza/vim-snippets.git'

" Powerline
" --------------------------------------------
Plugin 'https://github.com/Lokaltog/vim-powerline.git'

" Git
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/tpope/vim-git.git'

" EasyMotion
" --------------------------------------------
Plugin 'https://github.com/Lokaltog/vim-easymotion.git'

" abolish.vim
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-abolish.git'

" Vim-Latex
" --------------------------------------------
" Plugin 'https://github.com/jcf/vim-latex.git'

" Vim-Nagios
" --------------------------------------------
Plugin 'https://github.com/tejr/vim-nagios.git'

" Vim-Varnish
" --------------------------------------------
Plugin 'https://github.com/empanda/vim-varnish.git'

" Vim-Nginx
" --------------------------------------------
Plugin 'https://github.com/evanmiller/nginx-vim-syntax.git'

" Vim-Shorewall
" --------------------------------------------
Plugin 'https://github.com/vim-scripts/shorewall.vim.git'

" Color / GUI
" --------------------------------------------
Plugin 'https://github.com/tomasr/molokai.git'
"colors molokai
"Plugin 'https://github.com/nanotech/jellybeans.git'
Plugin 'https://github.com/nanotech/jellybeans.vim.git'

" Syntax checker
" --------------------------------------------
Plugin 'https://github.com/scrooloose/syntastic.git',

" Syntax
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-markdown.git'
" Plugin 'https://github.com/guileen/vim-node.git'
" Plugin 'https://github.com/myhere/vim-nodejs-complete.git'
" Plugin 'https://github.com/tpope/vim-bundler.git'
Plugin 'https://github.com/elzr/vim-json.git'
Plugin 'kchmck/vim-coffee-script.git'
if executable('rubocop')
	Plugin 'https://github.com/ngmy/vim-rubocop'
endif
Plugin 'https://github.com/mattboehm/vim-unstack'
Plugin 'https://github.com/vim-scripts/omlet.vim.git'

Plugin 'lh-vim-lib'
Plugin 'lh-brackets'

" Autoclose
" --------------------------------------------
Plugin 'https://github.com/Raimondi/delimitMate.git'

" TagBar to see classes
" --------------------------------------------
Plugin 'https://github.com/majutsushi/tagbar.git'

" Tabulations
" --------------------------------------------
Plugin 'https://github.com/godlygeek/tabular.git'

" Ack
" --------------------------------------------
Plugin 'https://github.com/mileszs/ack.vim.git'

" Ctrl P
" --------------------------------------------
Plugin 'https://github.com/kien/ctrlp.vim.git'

" Line Number
" --------------------------------------------
"Plugin 'https://github.com/jeffkreeftmeijer/vim-numbertoggle.git'

"" Supertab
" --------------------------------------------
"Plugin 'https://github.com/ervandew/supertab.git'

" TaskList
" --------------------------------------------
Plugin 'https://github.com/vim-scripts/TaskList.vim.git'
Plugin 'https://github.com/samsonw/vim-task.git'

" Matchit
" --------------------------------------------
" Plugin 'https://github.com/tsaleh/vim-matchit.git'

" Vim-ruby
" --------------------------------------------
Plugin 'https://github.com/vim-ruby/vim-ruby.git'
Plugin 'https://github.com/ecomba/vim-ruby-refactoring.git'
Plugin 'https://github.com/tpope/vim-cucumber.git'
Plugin 'https://github.com/tpope/vim-haml.git'
Plugin 'https://github.com/tpope/vim-endwise.git'
Plugin 'https://github.com/tpope/vim-rbenv.git'

" Vim-rails
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-rails.git'
Plugin 'https://github.com/skwp/vim-rspec.git'
" Plugin 'https://github.com/tpope/vim-bundler.git'

" Arduino
" --------------------------------------------
Plugin 'https://github.com/sudar/vim-arduino-syntax.git'
Plugin 'https://github.com/sudar/vim-arduino-snippets.git'

" Vim-surround
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-surround.git'

" Vim-CSV
" --------------------------------------------
Plugin 'https://github.com/chrisbra/csv.vim.git'

" NERD tree
" --------------------------------------------
Plugin 'https://github.com/scrooloose/nerdtree.git'

" Vim-python
" --------------------------------------------
Plugin 'https://github.com/klen/python-mode.git'
Plugin 'https://github.com/saltstack/salt-vim.git'

" Better Rainbow Parentheses
" --------------------------------------------
Plugin 'https://github.com/kien/rainbow_parentheses.vim.git'

call vundle#end()
filetype plugin indent on     " required!
syntax enable

set laststatus=2
set encoding=utf-8
set t_Co=256
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_symbols = 'unicode'

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
" EasyMotion {
"}

" abolish.vim {
"}

" " Vim-Latex {
" imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine
" imap <C-b> <Plug>Tex_MathBF
" imap <C-c> <Plug>Tex_MathCal
" imap <C-i> <Plug>Tex_InsertItemOnThisLine
"}

" Vim-Nagios {
"}
"

" Vim-Varnish {
"}

" Vim-Nginx {
au BufRead,BufNewFile */etc/nginx/** set ft=nginx
"}

" Vim-Shorewall {
au BufRead,BufNewFile */etc/shorewall/** set ft=shorewall
"}

colors jellybeans

" set guifont=Monaco:h12
set background=dark
set cursorline        " highlight current line
highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none


" Syntax checker
" --------------------------------------------
let g:syntastic_check_on_open=1

" Syntax
" --------------------------------------------
let g:vim_json_syntax_conceal = 0

" Ctrl P
" --------------------------------------------
let g:ctrlp_max_height = 25
let g:ctrlp_max_files = 90000
let g:ctrlp_clear_cache_on_exit = 1

" Line Number
" --------------------------------------------
"let g:NumberToggleTrigger="<F3>"

"" Supertab
" --------------------------------------------
"inoremap <expr> <Esc>  pumvisible() ? "\<C-e>" : "\<Esc>"
""" inoremap <expr> <CR>   pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"

" TaskList
" --------------------------------------------
autocmd BufNewFile,BufRead todo.txt,*.todo,*.task,*.tasks  setfiletype task | call VimrcMapTaskListKey()
function VimrcMapTaskListKey()
	:nmap \d :call Toggle_task_status()<CR>
endfunction

" NERD tree
" --------------------------------------------
nmap \e :NERDTreeToggle<CR>

"source ~/.vim/global.vim
"source ~/.vim/bindings.vim
"source ~/.vim/plugins.vim

" Other config
" --------------------------------------------
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
let $LANG = 'en_US'

set number
set hidden

" Allow convert json & XML to pretty content
map <leader>j :%!python -m json.tool<CR>
map <leader>x :%!xmllint % --format<CR>

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
autocmd FileType coffee
	\ set expandtab |
	\ set tabstop=2 shiftwidth=2 softtabstop=2 |
	\ set autoindent

autocmd FileType ruby
	\ set expandtab |
	\ set tabstop=2 shiftwidth=2 softtabstop=2 |
	\ set autoindent

autocmd FileType cucumber
	\ set expandtab |
	\ set tabstop=2 shiftwidth=2 softtabstop=2 |
	\ set autoindent

au BufRead,BufNewFile *.ino,*.pde set filetype=arduino

au BufRead,BufNewFile Guardfile set filetype=ruby
au BufRead,BufNewFile Berksfile set filetype=ruby

au BufRead,BufNewFile *.coffee set filetype=coffee
au BufRead,BufNewFile *.json set filetype=json

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 expandtab

" .vimrc.after is loaded after the plugins have loaded
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>"

set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

nmap _ :CtrlPBuffer<CR>

":let g:ctrlp_map = '<Leader>t'
":let g:ctrlp_match_window_bottom = 0
":let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

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

nnoremap <Space> za

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

" Vim-Nagios {
"}
"
au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
map <leader>p :RainbowParenthesesToggle<Enter>
