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
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tristen/vim-sparkup'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'mustache/vim-mustache-handlebars'

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
set nobackup          " no backup before write
set noswapfile        " no .swp madness

" map leader key
let mapleader=","

" convert to pastemode
set pastetoggle=<F2>

" make extra whitespace visible
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" cycle between open buffers
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" stop K showing manpages
" prevents accidents with
" shift and home keys
vnoremap K k

" use tab to jump between matching things
nnoremap <Tab> %


" Plugin Configuration
" --------------------

" CtrlP ignore some dirs
let g:ctrlp_custom_ignore = 'node_modules\|vendor\|git|static\'

" show airline without nerdtree
set laststatus=2

" NERDTree configurations
nmap <F5> :NERDTreeToggle<CR>
nmap <silent> <C-n> :NERDTreeToggle<CR>

" TMUX background fix
set term=screen-256color

" Thse commands will start NERDTree by default
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd VimEnter * wincmd p
let g:NERDTreeWinSize = 20
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Airline symbols
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"


" File Type Aliases
" -----------------

" Alias ejs to html
au BufNewFile,BufRead *.ejs set filetype=html
