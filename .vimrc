set hidden
set nowrap
set mouse=a
set incsearch
set list listchars=trail:.,tab:>-,nbsp:␣
set wildmenu wildmode=longest:full,full
set path=** wildignore+=**/node_modules/**
set autoindent smartindent
set expandtab softtabstop=2
set shiftwidth=2 shiftround
set timeoutlen=1000 ttimeoutlen=0
set noswapfile nobackup nowritebackup
set statusline=%{expand('%:~:.')}\ %{&modified?'[+]':''}%=%{expand(&filetype)}\ %l:%c
set undofile undodir=/tmp/vimundo
set backspace=indent,eol,start
set linebreak

syntax on
colorscheme github
filetype plugin on
filetype indent on

let mapleader="\<Space>"
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap - :E<CR>
nnoremap _ :Re<CR>
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0

let g:netrw_banner = 0
let g:netrw_list_hide = '^\.\+/$'
let g:netrw_hide = 1
let g:netrw_dirhistmax = 0

