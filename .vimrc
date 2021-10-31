set hidden
set nowrap
set splitbelow
set splitright
set mouse=a
set list
set listchars=trail:.,tab:>-,nbsp:␣
set wildmenu
set wildmode=longest:full,full
set wildignore+=**/node_modules/**
set path=**
set incsearch
set noswapfile
set nobackup
set nowritebackup
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround
set background=dark
set timeoutlen=1000
set ttimeoutlen=0
set statusline=%{expand('%:~:.')}\ %{&modified?'[+]':''}%=%{expand(&filetype)}\ %l:%c

syntax on
filetype plugin on
filetype indent on

let mapleader="\<Space>"
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
nnoremap - :E<CR>

let g:netrw_banner=0
let g:netrw_list_hide='^\.\+/$'
let g:netrw_hide=1

autocmd FileType markdown setlocal spell | setlocal wrap
autocmd FileType text setlocal spell | setlocal wrap

hi StatusLine ctermfg=white ctermbg=black
hi StatusLineNC ctermfg=8 ctermbg=white
hi VertSplit ctermbg=red ctermfg=black

