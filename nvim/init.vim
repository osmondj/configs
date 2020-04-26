" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugins')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'NLKNguyen/papercolor-theme'

Plug 'neoclide/coc.nvim', {'branch': 'release'} " LSP support
Plug 'jackguo380/vim-lsp-cxx-highlight' " C++ syntax based on LSP
Plug 'ericcurtin/curtineincsw.vim' " Switch header source

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" So that plugins based on filetype work fine
filetype plugin on 

" use "," instead of \ (aka <leader>)
let mapleader = ","

" Source default coc mappings
source /home/patrykosmaczko/configs/nvim/mappings_for_coc.vim

" Misc
set number
set tabstop=4
set shiftwidth=4

" So that C-I works to go to newer position if TAB is already mapped by plugin
unmap <C-I>

" Color scheme deduction
"syntax enable
set t_Co=256
set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'

" Switch header source
map <F4> :call CurtineIncSw()<CR> 

" Ignore files in .gitignore
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.orig

