"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/home/dan/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/dan/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'rking/ag.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'ap/vim-css-color'
NeoBundle 'christoomey/vim-tmux-navigator'
" languages
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'othree/html5.vim'
NeoBundle 'gkz/vim-ls'
NeoBundle 'danprince/vim-ngdoc'
NeoBundle 'moll/vim-node'
NeoBundle 'digitaltoad/vim-jade.git'
" writing tools
NeoBundle 'reedes/vim-pencil'
NeoBundle 'reedes/vim-litecorrect'
NeoBundle 'reedes/vim-lexical'
" expired

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" turn on syntax highlighting
syntax on
" recognize file types for
" indentation and plugins
filetype plugin indent on

set background=dark
colorscheme jellybeans

set expandtab         " turn tabs into spaces
set tabstop=2         " make tabs 2 wide
set shiftwidth=2      " make shifts 2 spaces
set cursorline        " highlight cursorline
set nowrap            " stop text wrapping
set number            " show line numbers
set ignorecase        " ignore case in searches
set autoindent        " copy indent from current line
set copyindent        " copy structure of existing lines
set smarttab          " treat spaces like tabs
set title             " show file name in window
set autoread          " reload file on change
set nobackup          " no backup before write
set noswapfile        " no .swp madness
set cc=80             " highlight at 80 chars

" switch into paste mode
set pastetoggle=<F2>

" make extra whitespace visible
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" split configurations
set splitbelow
set splitright

" map leader key
let mapleader="\<Space>"
" CtrlP Aliases
let g:ctrlp_map = '<Leader>o'
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>i :CtrlPBuffer<CR>
map <C-p> <Nop>

" General Purpose
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :wq<CR>

" stop K showing manpages (prevents accidents with shift and home keys)
vnoremap K k

" split navigation
nnoremap <C-J> <C-w><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Plugin Configuration
" --------------------

" CtrlP ignore some dirs
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|vendor\|.git\|bin'

" remove timeout delay on esc
set timeoutlen=1000 ttimeoutlen=0

" TMUX background fix
set term=screen-256color

" Show airline
set laststatus=2

" Airline symbols
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:bufferline_echo = 0
