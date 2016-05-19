
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
  set runtimepath+=/home/dan/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/dan/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'ervandew/supertab'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-surround'
NeoBundle 'whatyouhide/vim-gotham'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'reedes/vim-pencil'
NeoBundle 'reedes/vim-lexical'
"NeoBundle 'vim-airline/vim-airline'
"NeoBundle 'tpope/vim-fireplace'
"NeoBundle 'scrooloose/syntastic'
NeoBundle '/home/dan/dev/dan/vim-restack', { 'type' : 'nosync' }

" Required:
call neobundle#end()
NeoBundleCheck " check for uninstalled bundles

" recognize file types for indentation and plugins
filetype plugin indent on

" turn on syntax highlighting
syntax on
set background=dark
colorscheme gotham
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
set foldmethod=marker " fold on triple {
set foldnestmax=10
set nofoldenable
set foldlevel=2

" switch into paste mode
set pastetoggle=<F2>

" make extra whitespace visible
set list
set listchars=tab:>.,trail:.,extends:$,nbsp:.

" split configurations
set splitbelow
set splitright


" map leader key
let mapleader="\<Space>"

" leader aliases
let g:ctrlp_map = '<Leader>o'
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :wq<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>i :CtrlPBuffer<CR>
nnoremap <Leader>e :e 
" git leaders
nnoremap <Leader>a :Git add %<CR>
nnoremap <Leader>c :Git commit<CR>
nnoremap <Leader>p :Git push<CR>
" quick highlight toggle
nnoremap <Leader>h :nohl<CR>

" make ctrl-c behave more gracefully
map <C-c> <Esc>

" unset ctrlp alias
map <C-p> <Nop>

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

" terminal navigation
tnoremap <C-J> <C-\><C-n><C-J>
tnoremap <C-K> <C-\><C-n><C-K>
tnoremap <C-L> <C-\><C-n><C-L>
tnoremap <C-H> <C-\><C-n><C-H>
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

" show airline
"set laststatus=2

" fix airline symbols
let g:airline_powerline_fonts = 0
let g:airline_theme = 'gotham'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  let g:airline_symbols.space = "\ua0"
endif

