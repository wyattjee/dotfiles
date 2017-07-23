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
set number
set numberwidth=4

" Laststatus
"set laststatus=2

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
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'wolfgangmehner/c.vim'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'ponko2/deoplete-fish'
Plug 'shougo/neoinclude.vim'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-clang'
Plug 'ryanoasis/vim-devicons'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Initialize plugin system
call plug#end()


" Use deoplete.
let g:deoplete#enable_at_startup = 1

" vim-airline
let g:airline_powerline_fonts = 1   

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#buffer_idx_mode = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" deoplete-clang
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'

map <C-t> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
