inoremap jj <Esc>
set wildmode=longest,list,full
syntax on
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start
set number
set showcmd
set ignorecase
set autoindent
set incsearch
set nowrap
set scrolloff=8
set sidescroll=1
set sidescrolloff=8

filetype plugin indent on

" Plugins loaded
call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-repeat'
Plug 'adwinwhite/vim-fanfingtastic'
Plug 'vim-airline/vim-airline'
Plug 'zxqfl/tabnine-vim'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
call plug#end()


" Airline
let g:airline_powerline_fonts = 1


" Color scheme
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
let g:onedark_termcolors = 256
let g:airline_theme='onedark'
colorscheme onedark
set termguicolors


" Fold
set foldmethod=syntax
set foldlevel=0
set foldnestmax=1
" set foldclose=all
" hi Folded ctermbg=242



" Easymotion 
let mapleader=";" 
map <Leader> <Plug>(easymotion-prefix)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map  <Leader>f <Plug>(easymotion-bd-f2)
nmap <Leader>f <Plug>(easymotion-overwin-f2)
map <Leader>t <Plug>(easymotion-bd-t2)
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1



" Nerd commenter
"
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" Neovide
let g:neovide_font_size=54.0
