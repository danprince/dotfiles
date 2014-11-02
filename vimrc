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
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tristen/vim-sparkup'
NeoBundle 'tristen/vim-sparkup'
NeoBundle 'othree/html5.vim'

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set nocompatible
syntax on

filetype plugin indent on
color jellybeans

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

" Cycle between open buffers
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" NERDTree configurations
nmap \e :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd VimEnter * wincmd p
let g:NERDTreeWinSize = 20
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Alias ejs to html
au BufNewFile,BufRead *.ejs set filetype=html

" Airline symbols
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" Hexmode stuff
" nnoremap <C-H> :Hexmode<CR>
" inoremap <C-H> <Esc>:Hexmode<CR>
" vnoremap <C-H> :<C-U>Hexmode<CR>

" ex command for toggling hex mode
command -bar Hexmode call ToggleHex()

" helper function for toggling hex
function ToggleHex()
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides textwidth
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    "restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction
