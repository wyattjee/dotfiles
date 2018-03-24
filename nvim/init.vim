""""""""""""""""""""""""""""""
" Configure
""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai		"Auto indent
set si		"Smart indent
set wrap	"Wrap lines

" Make it obvious where 80 charaters is
set textwidth=80
set colorcolumn=+1

" Number
"set number
"set numberwidth=4

" Laststatus
set laststatus=2

" Search
set incsearch
set hlsearch

" backspace
set backspace=indent,eol,start

""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
"Plug 'wolfgangmehner/c.vim'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'ponko2/deoplete-fish'
Plug 'shougo/neoinclude.vim'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/gtk-vim-syntax'
Plug 'antoyo/vim-licenses'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Initialize plugin system
call plug#end()


" Use deoplete.
let g:deoplete#enable_at_startup = 1

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#buffer_idx_mode = 1

" deoplete-clang
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'

" keymap
map <F10> :TagbarToggle<CR>
map <F8> :NERDTreeToggle<CR>

" licennses
let g:licenses_authors_name = 'Wyatt Jee <bluesorrow221@gmail.com>'
let g:licenses_copyright_holders_name = 'Wyatt Jee <bluesorrow221@gmail.com>'
