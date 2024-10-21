" 󰒓 Vim settings "

filetype plugin indent on
syntax on

let mapleader=' '

set autoindent
set bg=dark
set cursorline
set cursorlineopt=line
set encoding=utf-8
set expandtab
set incsearch
set nohlsearch
set noshowmode
set nowrap
set number
set relativenumber
set scrolloff=4
set shiftwidth=4
set sidescrolloff=8
set signcolumn=yes
set smartindent
set smoothscroll
set softtabstop=4
set splitbelow
set splitkeep=screen
set splitright
set tabstop=4
set termguicolors
set updatetime=200

set t_RV=

" Plugins
call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
call plug#end()

""" Gruvbox settings
let g:gruvbox_italic = 1

" Colorscheme adjustments
augroup gruvbox_adjustments
    au!
    au ColorScheme gruvbox hi! link SignColumn Normal

    au ColorScheme gruvbox hi! link GitGutterAdd    GruvboxGreen
    au ColorScheme gruvbox hi! link GitGutterChange GruvboxOrange
    au ColorScheme gruvbox hi! link GitGutterDelete GruvboxRed
augroup END

colorscheme gruvbox

" Airline
let g:airline_powerline_fonts = 1
let g:airline_extensions = [ 'ale', 'ctrlp', 'fzf', 'tabline', 'hunks' ]

" NERDTree
let g:NERDTreeShowHidden = 1

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" IndentLine
let g:indentLine_char = '│'

" 󰌌 Keymaps "

" General
nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

tnoremap <c-h> <c-w>h
tnoremap <c-j> <c-w>j
tnoremap <c-k> <c-w>k
tnoremap <c-l> <c-w>l

nnoremap <a-h> <cmd>bprev<cr>
nnoremap <a-l> <cmd>bnext<cr>

nnoremap <a-x> <cmd>bdelete<cr>

" NERDTree
nnoremap <leader>n <cmd>NERDTreeToggle<cr>
