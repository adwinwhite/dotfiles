set wildmode=longest,list,full
syntax on
colorscheme delek
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number
set showcmd


imap jj <Esc>

call plug#begin(stdpath('data') . '/plugged')
Plug 'zxqfl/tabnine-vim'
Plug 'easymotion/vim-easymotion'
call plug#end()


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
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1
