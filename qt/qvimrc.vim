" highlight matched
set hlsearch
" case insensitive search
set ignorecase
set smartcase
" search while typing
set incsearch
" wrap-around when searching
set wrapscan
" show pressed keys in lower right corner
set showcmd
" keep a 5 line buffer for the cursor from top/bottom of window
set scrolloff=5
" X11 clipboard
set clipboard=unnamed
" use ~ with movement
set tildeop

" mappings
nnoremap ; :
" inoremap jj <Esc>

" clear highlighted search term on space
noremap <silent> <Space> :nohls<CR>

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" MOVE LINE/BLOCK
nnoremap <C-S-J> :m+<CR>==
nnoremap <C-S-K> :m-2<CR>==
inoremap <C-S-J> <Esc>:m+<CR>==gi
inoremap <C-S-K> <Esc>:m-2<CR>==gi
vnoremap <C-S-J> :m'>+<CR>gv=gv
vnoremap <C-S-K> :m-2<CR>gv=gv

" Cusotm
nmap <silent> gd :def<CR>
nmap <silent> gD :defSplit<CR>

nmap <silent> gi :imp<CR>
nmap <silent> gr :ref<CR>

nmap <silent> go :outline<CR>
nmap <silent> gp :project<CR>

nmap <silent> <C-i> :goForward<CR>
nmap <silent> <C-o> :goBack<CR>
nmap <silent> <tab> :easyMotion<CR>

