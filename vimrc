set nowrap
set hidden
set cursorline
set splitbelow
set splitright
set linebreak
set mouse=a
set list
set listchars=trail:.,tab:>-,nbsp:␣
set wildmenu
set wildmode=longest:full,full
set grepprg=git\ grep\ -n\ $*
set noswapfile
set nobackup
set nowritebackup
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround

syntax on
filetype plugin on
filetype indent on

let mapleader="\<Space>"
nnoremap - :Ex<CR>
nnoremap [q :cprev<CR>
nnoremap ]q :cnext<CR>
