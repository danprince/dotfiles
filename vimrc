
"   __   _( )__,___,_  ____ ___
"   \ \ / / |  _   _ \|  __/ __|
"    \ V /| | | | | | | | | (__
"     \_/ |_|_| |_| |_|_|  \___|
"
"         Dan Prince 2015
"
" http://github.com/danprince/dotfiles

if has('vim_starting')
  set nocompatible " Be iMproved

  " Required:
  set runtimepath+=/Users/dan/Apps/repos/github.com/Shougo/dein.vim
endif

" Required:
call dein#begin('/Users/dan/Apps')

" Let call dein#add(manage NeoBundle
" Required:
call dein#add('Shougo/dein.vim')

call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('ervandew/supertab')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
call dein#add('whatyouhide/vim-gotham')
call dein#add('nicholasc/vim-seti')
call dein#add('sheerun/vim-polyglot')
call dein#add('raichoo/purescript-vim')
call dein#add('reedes/vim-pencil')
call dein#add('reedes/vim-lexical')
call dein#add('reedes/vim-litecorrect')
call dein#add('tpope/vim-markdown')
call dein#add('junegunn/goyo.vim')
"call dein#add('vim-airline/vim-airline')
"call dein#add('tpope/vim-fireplace')
"call dein#add('scrooloose/syntastic')

" Required:
call dein#end()

if dein#check_install()
  call dein#install()
endif

" recognize file types for indentation and plugins
filetype plugin indent on

" turn on syntax highlighting
syntax on
set background=dark
colorscheme gotham
hi StatusLine ctermbg=8 ctermfg=4
"}}}

" Settings {{{
set expandtab         " turn tabs into spaces
set tabstop=2         " make tabs 2 wide
set shiftwidth=2      " make shifts 2 spaces
set smarttab          " treat spaces like tabs
set cursorline        " highlight cursorline
set nowrap            " stop text wrapping
set number            " show line numbers
set ignorecase        " ignore case in searches
set autoindent        " copy indent from current line
set copyindent        " copy structure of existing lines
set title             " show file name in window
set autoread          " reload file on change
set nobackup          " no backup before write
set noswapfile        " no .swp madness
set cc=80             " highlight at 80 chars
set mouse-=a          " disable mouse navigation

" switch into paste mode
set pastetoggle=<F2>

" make trailing whitespace visible
set list
set listchars=tab:>.,trail:.,extends:$,nbsp:.

" split configurations
set splitbelow
set splitright

" map leader key
let mapleader="\<Space>"

" leader aliases
"let g:ctrlp_map = '<Leader>o'
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :wq<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>i :CtrlPMRUFiles<CR>
nnoremap <Leader>n :!node %<CR>
nnoremap <Leader>t :vsp<CR>:term node<CR>

" git leaders
nnoremap <Leader>a :Git add %<CR>
nnoremap <Leader>c :Git commit<CR>
nnoremap <Leader>p :Git push<CR>
" quick highlight toggle
nnoremap <Leader>h :nohl<CR>
" quick toggle goyo
nnoremap <Leader>g :Goyo<CR>

" make ctrl-c behave more gracefully
map <C-c> <Esc>

" stop K showing manpages (prevents accidents with
" shift and home keys)
vnoremap K k

" stop having to shift
nnoremap ; :

" line navigation
nnoremap H ^
nnoremap L $
map J <C-d>
map K <C-u>

" split navigation
nnoremap <C-J> <C-w><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ctrlp ignore some dirs
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|_site\|\.git\|build\|out\|compiled'

" remove timeout delay on esc
set timeoutlen=1000 ttimeoutlen=0

" tmux background fix
set t_Co=256

