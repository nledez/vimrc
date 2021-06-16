set nocompatible          " be iMproved
filetype off              " required!

if !empty(glob("~/.vim/local.rc"))
   source ~/.vim/local.rc
endif

if !exists("g:local_run_fish")
	let g:local_run_fish = 0
end

if !exists("g:local_run_kapeli")
	let g:local_run_kapeli = 0
end

if !exists("g:local_run_ruby")
	let g:local_run_ruby = 0
end

if !exists("g:local_run_python")
	let g:local_run_python = 0
end

if !exists("g:local_run_markdown")
	let g:local_run_markdown = 0
end

if !exists("g:local_run_arduino")
	let g:local_run_arduino = 0
end

if !exists("g:local_run_go")
	let g:local_run_go = 0
end

if !exists("g:local_run_nginx")
	let g:local_run_nginx = 0
end

if !exists("g:local_run_shorewall")
	let g:local_run_shorewall = 0
end

if !exists("g:local_run_hashi")
	let g:local_run_hashi = 0
end

if !exists("g:local_run_ansible")
	let g:local_run_ansible = 0
end

if !exists("g:local_run_latex")
	let g:local_run_latex = 0
end

if !exists("g:local_run_3d")
	let g:local_run_3d = 0
end

if !exists("g:local_run_jenkins")
	let g:local_run_jenkins = 0
end

if !exists("g:local_run_snipmate")
	let g:local_run_snipmate = 0
end

if !exists("g:local_run_ultisnips")
	let g:local_run_ultisnips = 0
end

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Snipmate
" --------------------------------------------
if (g:local_run_snipmate == 1)
Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plugin 'https://github.com/tomtom/tlib_vim.git'
Plugin 'https://github.com/garbas/vim-snipmate.git'
Plugin 'https://github.com/honza/vim-snippets.git'
endif


" ultisnips
" --------------------------------------------
if (g:local_run_ultisnips == 1)
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
endif

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

" Vim-projectionist
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-projectionist.git'

" Vim-Dispatch
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-dispatch.git'

" abolish.vim
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-abolish.git'

" 
" --------------------------------------------
Plugin 'https://github.com/w0rp/ale.git'
Plugin 'https://github.com/mhinz/vim-grepper.git'
Plugin 'https://github.com/janko-m/vim-test.git'

if (g:local_run_latex == 1)
" Vim-Latex
" --------------------------------------------
Plugin 'https://github.com/jcf/vim-latex.git'
endif

if (g:local_run_nginx == 1)
" Vim-Nginx
" --------------------------------------------
" Plugin 'https://github.com/evanmiller/nginx-vim-syntax.git'
Plugin 'https://github.com/rhowardiv/nginx-vim-syntax.git'
endif

if (g:local_run_shorewall == 1)
" Vim-Shorewall
" --------------------------------------------
Plugin 'https://github.com/vim-scripts/shorewall.vim.git'
endif

if (g:local_run_3d == 1)
" syntax highlighting for OpenSCAD
" --------------------------------------------
Plugin 'https://github.com/sirtaj/vim-openscad.git'
Plugin 'https://github.com/gregjurman/vim-nc.git'
endif

if (g:local_run_jenkins == 1)
" syntax highlighting for Jenkins
" --------------------------------------------
Plugin 'https://github.com/martinda/Jenkinsfile-vim-syntax.git'
endif

if (g:local_run_hashi == 1)
" HCL
" --------------------------------------------
Plugin 'https://github.com/b4b4r07/vim-hcl.git'
endif

" Color / GUI
" --------------------------------------------
Plugin 'https://github.com/tomasr/molokai.git'
"colors molokai
"Plugin 'https://github.com/nanotech/jellybeans.git'
Plugin 'https://github.com/nanotech/jellybeans.vim.git'

" Syntax checker
" --------------------------------------------
" Plugin 'https://github.com/scrooloose/syntastic.git'

" Syntax
" --------------------------------------------
" Plugin 'https://github.com/guileen/vim-node.git'
" Plugin 'https://github.com/myhere/vim-nodejs-complete.git'
" Plugin 'https://github.com/tpope/vim-bundler.git'
Plugin 'https://github.com/elzr/vim-json.git'
" Plugin 'kchmck/vim-coffee-script.git'
" if executable('rubocop')
" 	Plugin 'https://github.com/ngmy/vim-rubocop'
" endif
Plugin 'https://github.com/mattboehm/vim-unstack'
Plugin 'https://github.com/vim-scripts/omlet.vim.git'

" LucHermitte - brackets
" --------------------------------------------
" Plugin 'LucHermitte/lh-vim-lib'
" Plugin 'LucHermitte/lh-tags'
" Plugin 'LucHermitte/lh-dev'
" Plugin 'LucHermitte/lh-brackets'

" Autoclose
" --------------------------------------------
Plugin 'https://github.com/Raimondi/delimitMate.git'

" Docker
" --------------------------------------------
Plugin 'ekalinin/Dockerfile.vim'

" yaml
" --------------------------------------------
Plugin 'avakhov/vim-yaml'

" TagBar to see classes
" --------------------------------------------
Plugin 'https://github.com/majutsushi/tagbar.git'

" Tabulations
" --------------------------------------------
Plugin 'https://github.com/godlygeek/tabular.git'

" Kotlin
" --------------------------------------------
Plugin 'udalov/kotlin-vim'

if (g:local_run_markdown == 1)
" Markdown
" --------------------------------------------
"  Plugin 'suan/vim-instant-markdown'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_concealcursor=''
endif

" Ack
" --------------------------------------------
Plugin 'https://github.com/mileszs/ack.vim.git'

" Ctrl P
" --------------------------------------------
Plugin 'ctrlpvim/ctrlp.vim'

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

if (g:local_run_fish == 1)
" Vim-fish
" --------------------------------------------
Plugin 'https://github.com/dag/vim-fish.git'
endif

if (g:local_run_kapeli == 1)
" Vim-dash (from kapeli)
" --------------------------------------------
Plugin 'rizzatti/dash.vim'
endif

if (g:local_run_ruby == 1)
" Vim-ruby
" --------------------------------------------
Plugin 'https://github.com/vim-ruby/vim-ruby.git'
Plugin 'https://github.com/ecomba/vim-ruby-refactoring.git'
Plugin 'https://github.com/tpope/vim-cucumber.git'
Plugin 'https://github.com/tpope/vim-haml.git'
Plugin 'https://github.com/tpope/vim-endwise.git'
Plugin 'https://github.com/tpope/vim-rbenv.git'
endif

" Vim-rails
" --------------------------------------------
" Plugin 'https://github.com/tpope/vim-rails.git'
" Plugin 'https://github.com/skwp/vim-rspec.git'
" Plugin 'https://github.com/tpope/vim-bundler.git'

if (g:local_run_arduino == 1)
" Arduino
" --------------------------------------------
Plugin 'https://github.com/sudar/vim-arduino-syntax.git'
Plugin 'https://github.com/sudar/vim-arduino-snippets.git'
endif

" Vim-surround
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-surround.git'

" NERD tree
" --------------------------------------------
Plugin 'https://github.com/preservim/nerdtree.git'

if (g:local_run_python == 1)
" Vim-python
" --------------------------------------------
Plugin 'https://github.com/python-mode/python-mode.git'
Plugin 'https://github.com/plytophogy/vim-virtualenv.git'
Plugin 'https://github.com/saltstack/salt-vim.git'
Plugin 'https://github.com/nvie/vim-flake8.git'
Plugin 'https://github.com/Rykka/riv.vim.git'
endif

if (g:local_run_go == 1)
" Vim-go
" --------------------------------------------
Plugin 'fatih/vim-go'

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1

" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" Map keys for most used commands.
" Ex: `\b` for building, `\r` for running and `\b` for running test.
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>c  <Plug>(go-coverage)

"au FileType go nmap <leader>b <Plug>(go-build)

autocmd FileType go nmap <Leader>ds <Plug>(go-def-split)
autocmd FileType go nmap <Leader>dv <Plug>(go-def-vertical)
autocmd FileType go nmap <Leader>dt <Plug>(go-def-tab)
endif

if (g:local_run_hashi == 1)
" Vim-hcl
" --------------------------------------------
Plugin 'fatih/vim-hclfmt'
Plugin 'hashivim/vim-consul'
Plugin 'hashivim/vim-nomadproject'
Plugin 'hashivim/vim-packer'
Plugin 'hashivim/vim-terraform'
Plugin 'hashivim/vim-vagrant'
Plugin 'hashivim/vim-vaultproject'
endif

if (g:local_run_ansible == 1)
" Vim-ansible
" --------------------------------------------
Plugin 'Yggdroot/indentLine'
Plugin 'pearofducks/ansible-vim'
" Plugin 'chase/vim-ansible-yaml'
endif

if (g:local_run_python == 1)
" Vim-python
" --------------------------------------------
let g:pymode_warnings = 1
let g:pymode_lint_cwindow = 0
let g:pymode_python = 'python3'
let g:pymode_lint_config = '$HOME/pylint.rc'
endif

" Vim-javascript
" --------------------------------------------
" Plugin 'isRuslan/vim-es6'
" Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'

" Better Rainbow Parentheses
" --------------------------------------------
Plugin 'https://github.com/kien/rainbow_parentheses.vim.git'

" Vim-CSV
" --------------------------------------------
" Plugin 'https://github.com/chrisbra/csv.vim.git'

call vundle#end()
filetype plugin indent on     " required!
syntax enable
set autowrite

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

if (g:local_run_ultisnips == 1)
" SirVer/ultisnips {
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"}
endif

" abolish.vim {
"}

if (g:local_run_latex == 1)
" " Vim-Latex {
" imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine
" imap <C-b> <Plug>Tex_MathBF
" imap <C-c> <Plug>Tex_MathCal
" imap <C-i> <Plug>Tex_InsertItemOnThisLine
"}
endif

if (g:local_run_nginx == 1)
" Vim-Nginx {
au BufRead,BufNewFile */etc/nginx/** set ft=nginx
"}
endif

if (g:local_run_shorewall == 1)
" Vim-Shorewall {
au BufRead,BufNewFile */etc/shorewall/** set ft=shorewall
"}
endif

colors jellybeans

" set guifont=Monaco:h12
set background=dark
set cursorline        " highlight current line
highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none


" Syntax checker
" --------------------------------------------
" let g:syntastic_check_on_open=1

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

" Vim-CSV
" --------------------------------------------
" if exists("did_load_csvfiletype")
" 	finish
" endif
" let did_load_csvfiletype=1
" 
" augroup filetypedetect
" 	au! BufRead,BufNewFile *.csv,*.datsetfiletype csv
" augroup END

" NERD tree
" --------------------------------------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

nmap \e :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1 " Show hidden files

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

if (g:local_run_ruby == 1)
autocmd FileType ruby
	\ set expandtab |
	\ set tabstop=2 shiftwidth=2 softtabstop=2 |
	\ set autoindent

autocmd FileType cucumber
	\ set expandtab |
	\ set tabstop=2 shiftwidth=2 softtabstop=2 |
	\ set autoindent

au BufRead,BufNewFile Guardfile set filetype=ruby
au BufRead,BufNewFile Berksfile set filetype=ruby
endif

if (g:local_run_3d == 1)
" 3d
" --------------------------------------------
au BufNewFile,BufRead *.gcode setlocal nospell ft=ngc syntax=ngc
endif


if (g:local_run_arduino == 1)
au BufRead,BufNewFile *.ino,*.pde set filetype=arduino
endif

if (g:local_run_hashi == 1)
au BufRead,BufNewFile *.nomad set filetype=nomad
autocmd FileType nomad setlocal et ts=2 ai sw=2 nu sts=0
endif

if (g:local_run_ansible == 1)
autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0
autocmd FileType yaml.ansible setlocal et ts=2 ai sw=2 nu sts=0
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
let g:indentLine_char = '│'
nmap \p :IndentLinesToggle<CR>
endif

au BufRead,BufNewFile *.coffee set filetype=coffee
au BufRead,BufNewFile *.json set filetype=json

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 expandtab

" .vimrc.after is loaded after the plugins have loaded
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>

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

nnoremap <Space> za

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>

" Navigate threw errors
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
map <leader>p :RainbowParenthesesToggle<Enter>

if has("nvim")
	" change cursor to bar in insert mode
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

  " disable mouse support, what am I a vimposer?
  set mouse-=a

  " run tests with :T
  let test#strategy = "neoterm"

  " vertical split instead of the default horizontal
  let g:neoterm_position = "vertical"

  " pretty much essential: by default in terminal mode, you have to press ctrl-\-n to get into normal mode
  " ain't nobody got time for that
  tnoremap <Esc> <C-\><C-n>

  " optional: make it easier to switch between terminal splits
  " ctrl doesn't work for some reason so I use alt
  " I think the terminal is capturing ctrl and not bubbling to vim or something
  tnoremap <A-h> <C-\><C-n><C-w>h
  tnoremap <A-j> <C-\><C-n><C-w>j
  tnoremap <A-k> <C-\><C-n><C-w>k
  tnoremap <A-l> <C-\><C-n><C-w>l

  " totally optional: mirror the alt split switching in non-terminal splits
  nnoremap <A-h> <C-w>h
  nnoremap <A-j> <C-w>j
  nnoremap <A-k> <C-w>k
  nnoremap <A-l> <C-w>l
endif

set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :<C-u>FZF<CR>

" For JavaScript files, use `eslint` (and only eslint)
let g:ale_linters = {
\   'javascript': ['eslint'],
\ }

" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" Grepper
let g:grepper       = {}
let g:grepper.tools = ['grep', 'git', 'rg']

" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>

" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

function! SetupCommandAlias(input, output)
  exec 'cabbrev <expr> '.a:input
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:input.'")'
        \ .'? ("'.a:output.'") : ("'.a:input.'"))'
endfunction
call SetupCommandAlias("grep", "GrepperGrep")

" Open Grepper-prompt for a particular Grep-alike tool
nnoremap <Leader>g :Grepper -tool git<CR>
nnoremap <Leader>G :Grepper -tool rg<CR>
