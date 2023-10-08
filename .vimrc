
" VIM SETTINGS "

syntax on

set number
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set mouse=a
set bg=dark
set termguicolors
set encoding=UTF-8
set nobackup
set nowritebackup

" PLUGINS
call plug#begin()

Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'yggdroot/indentline'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

colorscheme gruvbox

hi! Normal ctermbg=NONE guibg=NONE

" AIRLINE SETTINGS
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:gruvbox_italic = 1
" EXTENSIONS
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#ycm#enabled = 1

" NERDTREE SETTINGS
let g:NERDTreeShowHidden = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" CTRLP SETTINGS
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" INDENTLINE SETTINGS
let g:IndentLine_enabled = 1
