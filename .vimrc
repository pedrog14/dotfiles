
" 󰒓 Vim settings "

syntax on

let mapleader=' '

set bg=dark

set number
set relativenumber

set encoding=utf-8

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent

set nowrap

set nohlsearch
set incsearch

set termguicolors

set signcolumn=yes

set cursorline
set cursorlineopt=line

set scrolloff=4

set t_RV=

" Plugins
call plug#begin()

Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme gruvbox

" Gruvbox
let g:gruvbox_italic = 1

" Airline
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline_extensions = [ 'ale', 'ctrlp', 'fzf', 'ycm', 'tabline', 'hunks' ]

" NERDTree
let g:NERDTreeShowHidden = 1

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" IndentLine
let g:indentLine_char = '│'

hi! link SignColumn GruvboxBg0

" Functions
function! SmartNERDTree()                   
    if g:NERDTree.IsOpen() || @% == ''
        NERDTreeToggle                      
    else
        NERDTreeFind                        
    endif                                   
endfunction

function! ToggleColorColumn()
    if &colorcolumn == 80
        set colorcolumn&
    else
        set colorcolumn=80
    endif
endfunction

" 󰌌 Keymaps "

" General
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

tnoremap <C-h> <C-w>h
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-l> <C-w>l

nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>

nnoremap <silent> <leader>cc :call ToggleColorColumn()<CR>

" NERDTree
nnoremap <silent> <leader>n :call SmartNERDTree()<CR>
