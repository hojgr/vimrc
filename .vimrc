" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tomasr/molokai' " Colorscheme
Plug 'kien/ctrlp.vim' " CtrlP File finder
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'bling/vim-airline'        " Status line
Plug 'tpope/vim-fugitive' " Git Suppoer
Plug 'Lokaltog/vim-easymotion' " Easymotion (,,move)
Plug 'mhinz/vim-signify'



call plug#end()

" Visuals
colorscheme molokai

" UI
set number
set hlsearch

"-- Use 4 spaces for indent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" Bindings
" Jump between windows with CTRL+hjkl
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Map NERDTree
nmap <leader>ne :NERDTree<CR>

" Map Shift-TAB for reverse intendation
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i

" Map ; for CtrlPBuffer
nmap ; :CtrlPBuffer<CR>
