set number
set title

set fileencoding=utf-8
set encoding=utf-8

syntax on

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set smartcase
set wildmenu
set clipboard=unnamedplus

" keybind
" inoremap <silent> jj <esc>
inoremap <silent> jk <esc>
noremap <C-j> gT
noremap <C-k> gt
noremap j gj
noremap k gk
noremap J 10<Down>
noremap K 10<Up>
noremap H 10<Left>
noremap L 10<Right>

"" move line/word
noremap <C-e> $
noremap <C-a> 0
noremap <C-f> l
noremap <C-b> h
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
inoremap <C-f> <right>
inoremap <C-b> <left>

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>ff :tabe .<CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>H <C-w>H
nnoremap <Leader>J <C-w>J
nnoremap <Leader>K <C-w>K
nnoremap <Leader>L <C-w>L

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if (has("termguicolors"))
 set termguicolors
endif

if (filereadable(expand('~/.vim/autoload/plug.vim')))
    call plug#begin('~/.vim/plugged')

    Plug 'sheerun/vim-polyglot'

    " colorscheme
    " Plug 'morhetz/gruvbox'
    " Plug 'jacoborus/tender.vim'
    " Plug 'nanotech/jellybeans.vim'
    Plug 'joshdick/onedark.vim'

    call plug#end()
endif

try
    colorscheme onedark
    let g:onedark_termcolors=256
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert
endtry
