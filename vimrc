set nocompatible          " be iMproved
filetype off              " required!

if !empty(glob("~/.vim/local.rc"))
   source ~/.vim/local.rc
endif

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

if !exists("g:local_run_docker")
	let g:local_run_docker = 0
end

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Airline
" --------------------------------------------
Plugin 'https://github.com/vim-airline/vim-airline.git'

" Git
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/airblade/vim-gitgutter.git'

" Vim-Dispatch
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-dispatch.git'

" abolish.vim
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-abolish.git'

" Syntax checker
" --------------------------------------------
Plugin 'https://github.com/dense-analysis/ale'

" Search
" --------------------------------------------
Plugin 'https://github.com/mhinz/vim-grepper.git'

" Color / GUI
" --------------------------------------------
Plugin 'https://github.com/nanotech/jellybeans.vim.git'

" Syntax
" --------------------------------------------
Plugin 'https://github.com/elzr/vim-json.git'
Plugin 'https://github.com/mattboehm/vim-unstack'

" Autoclose
" --------------------------------------------
Plugin 'https://github.com/Raimondi/delimitMate.git'

" yaml
" --------------------------------------------
Plugin 'https://github.com/mrk21/yaml-vim.git'

" Tabulations
" --------------------------------------------
Plugin 'https://github.com/godlygeek/tabular.git'

" Displaying thin vertical lines
" --------------------------------------------
Plugin 'https://github.com/Yggdroot/indentLine.git'

" TaskList
" --------------------------------------------
Plugin 'https://github.com/vim-scripts/TaskList.vim.git'

" Vim-surround
" --------------------------------------------
Plugin 'https://github.com/tpope/vim-surround.git'

" NERD tree
" --------------------------------------------
Plugin 'https://github.com/preservim/nerdtree.git'

" Vim-javascript
" --------------------------------------------
Plugin 'https://github.com/pangloss/vim-javascript.git'

" Better Rainbow Parentheses
" --------------------------------------------
Plugin 'https://github.com/kien/rainbow_parentheses.vim.git'

" Plugin can be installed
" =============================================

if (g:local_run_latex == 1)
" Vim-Latex
" --------------------------------------------
Plugin 'https://github.com/vim-latex/vim-latex'
endif

if (g:local_run_nginx == 1)
" Vim-Nginx
" --------------------------------------------
Plugin 'https://github.com/chr4/nginx.vim.git'
endif

if (g:local_run_3d == 1)
" syntax highlighting for OpenSCAD
" --------------------------------------------
Plugin 'https://github.com/sirtaj/vim-openscad.git'
Plugin 'https://github.com/gregjurman/vim-nc.git'
endif

if (g:local_run_hashi == 1)
" HCL
" --------------------------------------------
Plugin 'https://github.com/jvirtanen/vim-hcl.git'
endif

" Docker
" --------------------------------------------
if (g:local_run_docker == 1)
Plugin 'https://github.com/ekalinin/Dockerfile.vim.git'
endif

if (g:local_run_markdown == 1)
" Markdown
" --------------------------------------------
Plugin 'https://github.com/preservim/vim-markdown.git'
endif

if (g:local_run_kapeli == 1)
" Vim-dash (from kapeli)
" --------------------------------------------
Plugin 'https://github.com/rizzatti/dash.vim.git'
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

" Vim-rails
" --------------------------------------------
" Plugin 'https://github.com/tpope/vim-rails.git'
" Plugin 'https://github.com/skwp/vim-rspec.git'
" Plugin 'https://github.com/tpope/vim-bundler.git'
endif

if (g:local_run_arduino == 1)
" Arduino
" --------------------------------------------
Plugin 'https://github.com/sudar/vim-arduino-syntax.git'
endif

if (g:local_run_python == 1)
" Vim-python
" --------------------------------------------
Plugin 'https://github.com/python-mode/python-mode.git'
Plugin 'https://github.com/saltstack/salt-vim.git'
Plugin 'https://github.com/janko-m/vim-test.git'
endif

if (g:local_run_ansible == 1)
" Vim-ansible
" --------------------------------------------
" Plugin 'https://github.com/pearofducks/ansible-vim'
" Bundle 'chase/vim-ansible-yaml'
endif

if (g:local_run_go == 1)
" Vim-go
" --------------------------------------------
Plugin 'https://github.com/fatih/vim-go.git'
endif

if (g:local_run_hashi == 1)
" Vim-hcl
" --------------------------------------------
Plugin 'https://github.com/hashivim/vim-consul.git'
Plugin 'https://github.com/hashivim/vim-nomadproject.git'
Plugin 'https://github.com/hashivim/vim-packer.git'
Plugin 'https://github.com/hashivim/vim-terraform.git'
Plugin 'https://github.com/hashivim/vim-vagrant.git'
Plugin 'https://github.com/hashivim/vim-vaultproject.git'
endif

" Start config
" =============================================

if filereadable(expand("~/.vim_local"))
  source ~/.vim_local
endif

call vundle#end()
filetype plugin indent on     " required!
syntax enable
set autowrite

set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
let $LANG = 'en_US'
set number
set hidden

set incsearch
set ignorecase
set smartcase
set hlsearch

set laststatus=2
set encoding=utf-8
set t_Co=256
colors jellybeans
" set guifont=Monaco:h12
set background=dark
set cursorline        " highlight current line
highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none

filetype on
filetype indent on
filetype plugin on

" So what, I can't type...
nmap :W :w
nmap :X :x
nmap :Q :q
nmap \q :nohlsearch<CR>
nmap <Leader>l :setlocal number!<CR>
nmap <Leader>o :set paste!<CR>
nnoremap <Space> za

" Navigate threw errors
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Fugitive {
nnoremap <silent> <leader>gs :G status<CR>
nnoremap <silent> <leader>gd :G diff<CR>
nnoremap <silent> <leader>gb :G blame<CR>
nnoremap <silent> <leader>gl :G log<CR>
nnoremap <silent> <leader>gg :GitGutterToggle<CR>
"}

" Syntax
" --------------------------------------------
let g:vim_json_syntax_conceal = 0

" TaskList
" --------------------------------------------
map <Leader>L <Plug>TaskList

" NERD tree
" --------------------------------------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

nmap <leader>e :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1 " Show hidden files

" Other config
" --------------------------------------------
" Allow convert json & XML to pretty content
map <leader>j :%!python -m json.tool<CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
	" When editing a file, always jump to the last known cursor position.
	autocmd BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
		\ endif
endif " has("autocmd")"

autocmd BufRead,BufNewFile *.json set filetype=json

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 expandtab

" set rtp+=/usr/local/opt/fzf
" nnoremap <C-p> :<C-u>FZF<CR>

" Plugin configurations
" =============================================

" Rainbow
" --------------------------------------------
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
map <leader>p :RainbowParenthesesToggle<Enter>

" Asynchronous Lint Engine configuration
" --------------------------------------------
let g:ale_sign_column_always = 1
"define the ale coin
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
"let vim statusline combine ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_enter = 1
let g:ale_set_highlights = 0
" Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 10
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" In normal mode, sp goes to the previous error or warning, sn goes to the next error or warning
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
""<Leader>s Trigger/disable syntax checking
nmap <Leader>s :ALEToggle<CR>
"<Leader>d View details of errors or warnings
nmap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
\   'python': ['pylint'],
\   'ansible': ['ansible'],
\}

" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" Grepper
" --------------------------------------------
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


" Parameterized configuration
" =============================================

if (g:local_run_ruby == 1)
autocmd FileType ruby
	\ set expandtab |
	\ set tabstop=2 shiftwidth=2 softtabstop=2 |
	\ set autoindent

autocmd FileType cucumber
	\ set expandtab |
	\ set tabstop=2 shiftwidth=2 softtabstop=2 |
	\ set autoindent

autocmd BufRead,BufNewFile Guardfile set filetype=ruby
autocmd BufRead,BufNewFile Berksfile set filetype=ruby
endif

if (g:local_run_3d == 1)
" 3d
" --------------------------------------------
autocmd BufNewFile,BufRead *.gcode setlocal nospell ft=ngc syntax=ngc
endif

if (g:local_run_arduino == 1)
autocmd BufRead,BufNewFile *.ino,*.pde set filetype=arduino
endif

if (g:local_run_hashi == 1)
autocmd BufRead,BufNewFile *.nomad set filetype=nomad
autocmd FileType nomad setlocal et ts=2 ai sw=2 nu sts=0
endif

if (g:local_run_ansible == 1)
autocmd BufRead,BufNewFile */playbooks/*.yml set filetype=ansible
" autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0
" autocmd FileType yaml.ansible setlocal et ts=2 ai sw=2 nu sts=0
" autocmd BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
" let g:indentLine_char = '│'
" nmap \p :IndentLinesToggle<CR>
endif

if (g:local_run_go == 1)
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

"autocmd FileType go nmap <leader>b <Plug>(go-build)

autocmd FileType go nmap <Leader>ds <Plug>(go-def-split)
autocmd FileType go nmap <Leader>dv <Plug>(go-def-vertical)
autocmd FileType go nmap <Leader>dt <Plug>(go-def-tab)
endif

if (g:local_run_markdown == 1)
" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_concealcursor=''
endif

if (g:local_run_python == 1)
" Vim-python
" --------------------------------------------
let g:pymode_warnings = 1
let g:pymode_lint_cwindow = 0
let g:pymode_python = 'python3'
let g:pymode_lint_config = '$HOME/pylint.rc'
endif

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
autocmd BufRead,BufNewFile */etc/nginx/** set ft=nginx
"}
endif

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
