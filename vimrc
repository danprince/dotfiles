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

set nocompatible
syntax on

filetype plugin indent on
colorscheme jellybeans

set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
set nowrap
set number
set ignorecase
set autoindent
set copyindent
set smarttab
set title
set nobackup
set noswapfile

" Display extra whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>

" Map leader key
let mapleader=","

" Cycle between open buffers
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" stop K showing manpages
vnoremap K k

" use tab to jump between matching things
nnoremap <Tab> %

" CtrlP ignore some dirs
let g:ctrlp_custom_ignore = 'node_modules\|vendor\|git'

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


" Relative Line Numbers toggle
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

" turn on relative line numbers
nnoremap <C-n> :call NumberToggle()<CR>


" File Type Aliases
" -----------------

" Alias ejs to html
au BufNewFile,BufRead *.ejs set filetype=html
