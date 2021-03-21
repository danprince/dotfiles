
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-git', 'coc-tsserver']

Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'tpope/vim-vinegar'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'
Plug 'kchmck/vim-coffee-script'
Plug 'plasticboy/vim-markdown'

call plug#end()

filetype plugin on
filetype indent on

set nowrap
set linebreak
set hidden
set mouse=a
set splitright
set splitbelow
set updatetime=500

" search
set ignorecase
set smartcase
set nohlsearch
set inccommand=nosplit

" backup
set noswapfile
set nobackup
set nowritebackup

" indent
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set smartindent
set shiftround

" visual tweaks
set cursorline
set nonumber
set signcolumn=yes
set list
set listchars=trail:.,tab:>-,nbsp:␣
set guicursor=n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20

" undo history between sessions
set undofile
set undodir=~/.config/nvim/undodir

" use rg for :grep
set grepprg=rg\ --vimgrep\ --no-heading
set grepformat=%f:%l:%c:%m,%f:%l:%m

set termguicolors
set background=dark
colorscheme embark

" Status Line
set stl=\ %2*%{WebDevIconsGetFileTypeSymbol()}\ %*
set stl+=%3*\%{&modified?expand('%:~:.'):''}
set stl+=%*\%{&modified?'':expand('%:~:.')}
set stl+=%=
set stl+=%1*\ \ %{FugitiveHead()}
set stl+=\ %*%l:%c\ 
hi User1 guifg=#8A889D guibg=#1E1C31
hi User2 guifg=#65B2FF guibg=#1E1C31
hi User3 guifg=#F02E6E guibg=#1E1C31

" Embark tweaks
let g:embark_terminal_italics = 1
hi VertSplit guibg=#1e1c31 guifg=#100e23
hi DiffAdd guibg=#1e1c31 guifg=#62D196
hi DiffDelete guibg=#1e1c31 guifg=#F02E6E
hi DiffChange guibg=#1e1c31 guifg=#F2B482
hi ColorColumn guibg=#3e3859
hi StatusLine guibg=#1E1C31
hi StatusLineNC guifg=#585273 guibg=#1E1C31
hi CursorLine guibg=#17162a
hi MsgArea guifg=#CBE3E7
hi ModeMsg guifg=#65B2FF

" Leader mappings
let mapleader="\<Space>"

" Find
nnoremap <Leader><Leader> :Telescope find_files<CR>
nnoremap <Leader>fr :Telescope oldfiles<cr>
nnoremap <Leader>fq :Telescope quickfix<cr>
nnoremap <Leader>fg :Telescope live_grep<cr>
nnoremap <Leader>fb :Telescope buffers<cr>

" Code
nnoremap <Leader>ca :CocAction<CR>
nmap <Leader>rn <Plug>(coc-rename)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Quickfix
nnoremap [q :cprev<CR>z.
nnoremap ]q :cnext<CR>z.

" Git
nnoremap <silent><Leader>gg :Gedit :<CR>
nnoremap <Leader>gb :Telescope git_branches<CR>
nnoremap <Leader>gl :Telescope git_commits<CR>
nnoremap <Leader>gs :Telescope git_status<CR>
nnoremap <Leader>gc :Git commit<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gf :Git pull<CR>
vnoremap <Leader>gh :Gbrowse<CR>
nnoremap <Leader>gh :Gbrowse<CR>

" Sane keys for navigating out of a terminal
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l

"" Prevent shift based accidents
"nnoremap H h
"nnoremap J j
"nnoremap K k
"nnoremap L l

" Navigate popupmenu with more natural tab/shift-tab commands
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Coc Keybindings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gh :call CocActionAsync('doHover')<CR>

" Enable self closing tags
let g:closetag_filenames = '*.html,*.jsx,*.tsx'
let g:closetag_xhtml_filenames = '*.jsx,*.tsx'

" TreeSitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" or a list of languages
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}
EOF

" Custom commands
command! -range=1 Decaf w !decaffeinate | pbcopy

