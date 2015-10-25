" !!! For PHPCS and PHPMD to work,
" both must be installed via composer
" - composer global require phpmd/phpmd
" - composer global require "squizlabs/php_codesniffer=*"

" vim-fugitive (and probably some other plugins)
" are not compatible with FISH shell
" this fixes it
set shell=/bin/bash


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
Plug 'mattn/emmet-vim'

" Plugins for Snippets and automatic autocompletion
Plug 'ervandew/supertab'

" !!! YCM must be compiled before use. @see https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" For Session persistance
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" PHPUnit impl
Plug 'joonty/vim-phpunitqf'

" GOLang
Plug 'fatih/vim-go'

" Tag bar
Plug 'majutsushi/tagbar'
Plug 'garyburd/go-explorer'

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

"let g:syntastic_go_checkers = [] " disable syntastic for Go

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:session_autoload = 'no'
let g:session_autosave = 'no'

" vim-go tags
nmap <F8> :TagbarToggle<CR>

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)


let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_fail_silently = 1
