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

" Custom mappings
inoremap jj <Esc>
noremap <silent> <F6> :source ~/.vimrc<CR>

" Plugins loaded
call plug#begin(stdpath('data') . '/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'romainl/vim-cool'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-repeat'
Plug 'adwinwhite/vim-fanfingtastic'
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
call plug#end()


" Deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#var('tabnine', {
\ 'line_limit': 500,
\ 'max_num_results': 10,
\ })



" Ale
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'c': ['clang_format'],
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1


" Better whitespace
let g:better_whitespace_enabled=1
" Ale does that now
" let g:strip_whitespace_on_save=1


" Fanfingtastic
let g:fanfingtastic_ignorecase = 1


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


" Custom functions
