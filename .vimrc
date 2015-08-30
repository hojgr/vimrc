" Set MapLeader
let mapleader=","

set t_Co=256

set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'     " Syntax checker, PHPCS, PHPMD
Plug 'tomasr/molokai'           " Colorscheme
Plug 'kien/ctrlp.vim'           " CtrlP File finder
Plug 'scrooloose/nerdtree'      " NERDTree
Plug 'bling/vim-airline'        " Status line
Plug 'tpope/vim-fugitive'       " Git Suppoer
Plug 'Lokaltog/vim-easymotion'  " Easymotion (,,move)
Plug 'mileszs/ack.vim'
Plug 'mhinz/vim-signify'

" Plugins for Snippets and automatic autocompletion
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" Enable syntax highlight
syntax on

" Show status bar at all times
set laststatus=2

" Set color scheme
colorscheme molokai

" Show line numbers
set number

" Intend with 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

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

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Define Enabled checkers
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

let g:syntastic_php_phpcs_exec = '~/.composer/vendor/bin/phpcs'
let g:syntastic_php_phpmd_exec = '~/.composer/vendor/bin/phpmd'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

