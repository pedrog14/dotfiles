" 󰒓 Vim settings "

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let mapleader=' '

set autoindent
set bg=dark
set clipboard=unnamedplus
set completeopt=menuone,noselect,popup,fuzzy
set confirm
set cursorline
set encoding=utf-8
set expandtab
set incsearch
set mouse=nvi
set nohlsearch
set noruler
set noshowmode
set nowrap
set number
set pumheight=12
set relativenumber
set scrolloff=4
set shiftround
set shiftwidth=4
set shortmess+=WcC
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
set timeoutlen=500
set undofile
set updatetime=200
set virtualedit=block
set wildmode=longest:full,full
set wildoptions=fuzzy,pum,tagfile

" Plugins
call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Colorscheme adjustments
augroup gruvbox_adjustments
    au!
    au ColorScheme gruvbox hi! link SignColumn Normal

    au ColorScheme gruvbox hi! link GitGutterAdd    GruvboxGreen
    au ColorScheme gruvbox hi! link GitGutterChange GruvboxOrange
    au ColorScheme gruvbox hi! link GitGutterDelete GruvboxRed

    au ColorScheme gruvbox hi! link CursorLineNr GruvboxYellowBold
augroup END

colorscheme gruvbox

" Airline
let g:airline_powerline_fonts = 1
let g:airline_extensions = [ 'coc', 'fzf', 'tabline', 'hunks' ]

" NERDTree
let g:NERDTreeShowHidden = 1

" IndentLine
let g:indentLine_char = '│'

" 󰌌 Keymaps "

" General
nnoremap <a-h> <cmd>bprev<cr>
nnoremap <a-l> <cmd>bnext<cr>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <a-c> <cmd>quit<cr>
nnoremap <a-x> <cmd>bdelete<cr>

nnoremap <a-s> <c-w>s
nnoremap <a-v> <c-w>v

" NERDTree
nnoremap <leader>n <cmd>NERDTreeToggle<cr>
