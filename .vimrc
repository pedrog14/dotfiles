
" 󰒓 VIM SETTINGS "

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

" PLUGINS
call plug#begin()

" Colorscheme
Plug 'gruvbox-community/gruvbox'

" Tpope my beloved...
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Syntax 
Plug 'dense-analysis/ale'

" Directory TUI
Plug 'preservim/nerdtree'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Completer
Plug 'ycm-core/YouCompleteMe'

" FZF my beloved...
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Others...
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'

call plug#end()

colorscheme gruvbox

" GRUVBOX SETTINGS
let g:gruvbox_italic = 1

" AIRLINE SETTINGS
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#ycm#enabled = 1

" NERDTREE SETTINGS
let g:NERDTreeShowHidden = 1

" CTRLP SETTINGS
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" INDENTLINE SETTINGS
let g:indentLine_char = '│'

hi! link SignColumn GruvboxBg0

function! SmartNERDTree()                   
    if g:NERDTree.IsOpen() || @% == ''
        NERDTreeToggle                      
    else
        NERDTreeFind                        
    endif                                   
endfunction

" Keymaps "

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

" NERDTree
nnoremap <silent> <leader>n :call SmartNERDTree()<CR>
