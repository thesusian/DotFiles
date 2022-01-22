syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set cmdheight=1
set path=.,,**
set scrolloff=10

call plug#begin('~/.nvim/plugged')

    "Theme
    Plug 'morhetz/gruvbox'

    "Vim man
    Plug 'vim-utils/vim-man'

    "Good for cpp?
    Plug 'lyuts/vim-rtags'

    "File finding
    Plug 'kien/ctrlp.vim'

    "Auto complete
    Plug 'Valloric/YouCompleteMe'

call plug#end()

colorscheme gruvbox
set background=dark

let g:netrw_browse_split=2
let g:netrw_winsize=25
let g:netrw_banner=0
let g:ctrlp_use_caching=0
let mapleader=" "

let g:ycm_always_populate_location_list = 1
let g:ycm_global_ycm_extra_conf = '~/.nvim/plugged/YouCompleteMe/.ycm_extra_conf.py'

"let make files work if in sub directory
let &makeprg = 'if [ -f Makefile ]; then make -C %:p:h $*; else make -C %:p:h/.. $*; fi'

nnoremap <leader>f :tab drop 
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>e :vsp<bar> :wincmd l<bar> :terminal<CR> 
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>t :tabn<CR>
nnoremap <leader>T :tabp<CR>
nnoremap <leader>wq :wincmd h <bar>:q<CR>
nnoremap <leader>o :noh<CR>
