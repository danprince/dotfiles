
"   __   _( )__,___,_  ____ ___
"   \ \ / / |  _   _ \|  __/ __|
"    \ V /| | | | | | | | | (__
"     \_/ |_|_| |_| |_|_|  \___|
"
"         Dan Prince 2015
"
" http://github.com/danprince/dotfiles

"NeoBundle Configuration{{{
if has('vim_starting')
  set nocompatible " Be iMproved

  " Required:
  set runtimepath+=/home/dan/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/dan/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
"}}}

"Plugins {{{
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'rking/ag.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'ap/vim-css-color'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'danprince/seti.vim'
" languages
NeoBundle 'othree/yajs.vim'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'othree/html5.vim'
NeoBundle 'gkz/vim-ls'
NeoBundle 'moll/vim-node'
NeoBundle 'digitaltoad/vim-jade.git'
" writing tools
NeoBundle 'reedes/vim-pencil'
NeoBundle 'reedes/vim-litecorrect'
NeoBundle 'reedes/vim-lexical'
"}}}

"Neobundle Init {{{
" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"}}}

" Appearance {{{
" recognize file types for indentation and plugins
filetype plugin indent on

" turn on syntax highlighting
syntax on
set background=dark
colorscheme seti
"}}}

" Settings {{{
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
set foldmethod=marker " fold on triple {
set foldnestmax=10
set nofoldenable
set foldlevel=2
"}}}

" Misc {{{
" switch into paste mode
set pastetoggle=<F2>

" make extra whitespace visible
set list
set listchars=tab:>.,trail:.,extends:…,nbsp:.

" split configurations
set splitbelow
set splitright
"}}}

" Key Remapping {{{
" map leader key
let mapleader="\<Space>"

" leader aliases
let g:ctrlp_map = '<Leader>o'
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :wq<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>i :CtrlPBuffer<CR>

" unset ctrlp alias
map <C-p> <Nop>

" stop K showing manpages (prevents accidents with
" shift and home keys)
vnoremap K k

" line navigation
nnoremap H ^
nnoremap L $
map J j
map K k

" split navigation
nnoremap <C-J> <C-w><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" Plugin Configuration {{{

" ctrlp ignore some dirs
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|.git'

" remove timeout delay on esc
set timeoutlen=1000 ttimeoutlen=0

" tmux background fix
"set term=screen-256color
"set t_Co=256

" show airline
set laststatus=2

" fix airline symbols
let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  let g:airline_symbols.space = "\ua0"
endif

" start automatically
let g:bufferline_echo = 0

" }}}

