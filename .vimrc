
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

set noshowmode

set updatetime=200

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
augroup set_transparency
    au!
    au ColorScheme * hi! Normal guibg=NONE ctermbg=NONE
    au ColorScheme * hi! VertSplit guibg=NONE ctermbg=NONE
    au ColorScheme * hi! link SignColumn Normal

    au ColorScheme gruvbox hi! link GitGutterAdd    GruvboxGreen
    au ColorScheme gruvbox hi! link GitGutterChange GruvboxAqua
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

" Functions
function! SmartNERDTree()
    if g:NERDTree.IsOpen() || @% == ''
        NERDTreeToggle
    else
        NERDTreeFind
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

nnoremap <S-h> <Cmd>bprev<CR>
nnoremap <S-l> <Cmd>bnext<CR>

nnoremap <silent> <A-c> <Cmd>let &cc = &cc == '' ? '80' : ''<CR>

" NERDTree
nnoremap <silent> <leader>n :call SmartNERDTree()<CR>
