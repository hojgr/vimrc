" Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' " NERDTree
Plug 'tpope/vim-fugitive' " Git Suppoer
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/CSApprox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-eunuch'
Plug 'qpkorr/vim-bufkill'
Plug 'sheerun/vim-polyglot'
Plug 'justinmk/vim-sneak'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'nightsense/office'

Plug 'Valloric/YouCompleteMe'
" Plug 'shawncplus/phpcomplete.vim'

Plug 'arnaud-lb/vim-php-namespace'

call plug#end()

colorscheme office-dark

" UI
set number
set hlsearch

set t_Co=256

set laststatus=2
set noshowmode

" Use 4 spaces for indent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

let g:sneak#label = 1

" Bindings
" Jump between windows with CTRL+hjkl
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

let mapleader = ","

" Map NERDTree
nmap <leader>ne :NERDTree<CR>

nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

nmap <Leader>x :cclose<CR>

" Tab editing
nmap <C-w>t mg:tabedit %<CR>`gzz
nmap <C-w>x :tabclose<CR>

let g:ackprg = 'ag --nogroup --nocolor --column'

highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

" Laravel bindings
nmap <Leader>lm :!php artisan make:
nmap <Leader>la :!php artisan 

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! DeleteHiddenBuffers()
  let tpbl=[]
  let closed = 0
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    if getbufvar(buf, '&mod') == 0
      silent execute 'bwipeout' buf
      let closed += 1
    endif
  endfor
  echo "Closed ".closed." hidden buffers"
endfunction
