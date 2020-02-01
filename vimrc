set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set nowrap
set number
set ignorecase
set nohlsearch
set nobackup
set noswapfile
set splitbelow
set splitright
set mouse=a
set autoindent
set fillchars+=vert:│
syntax on

let mapleader="\<Space>"
nnoremap <Leader><Leader> :buffer 
nnoremap <Leader>fr :oldfiles<CR> 

" prevent shift based accidents
nnoremap H h
nnoremap J j
nnoremap K k
nnoremap L l

" preserve visual selection after indent
vnoremap < <gv
vnoremap > >gv

" colorscheme tweaks
hi VertSplit cterm=None ctermbg=None ctermfg=Black
hi LineNr ctermbg=None ctermfg=Black
hi StatusLine cterm=None ctermbg=Black ctermfg=White
hi StatusLineNC cterm=None ctermbg=None ctermfg=DarkGrey
