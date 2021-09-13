" .vimrc
" Felipe Moura

" Geral
set number " show line number
set mouse=a " allows mouse to be used
set autoindent " new lines inherit the identetions of previous line
set copyindent
set hlsearch
set title
set cursorline
set hidden
set shiftwidth=4 " number of spaces to use for autoindenting
set splitright
set clipboard=unnamed

" disable annoying beep
:set noerrorbells
:set vb t_vb=

" status line
set stl=%f\ %m\ %r\ line\ %l\ of\ %L\ [%p%%],\ column\ %c%=Type:%y
set laststatus=2

" set shell
if has('unix')
  let shell='bash'
endif

" autocomplete
" Just use CTRL + P to show the menu
set complete+=kspell
set shortmess+=c
set completeopt=menuone,longest,preview

" plugins
call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'vim-scripts/AutoComplPop'
	Plug 'altercation/vim-colors-solarized'
	Plug 'vim-python/python-syntax'
	if has('nvim')
	    Plug 'nvim-lua/plenary.nvim'
	    Plug 'nvim-telescope/telescope.nvim'
	endif
call plug#end()

" NERDtree options
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" solarized options
"let g:solarized_termcolors=256
syntax enable
colorscheme solarized
set background=dark
call togglebg#map("<F5>")

let g:python_highlight_all = 1

" maps
imap jk <Esc>
nmap <C-s> :w<cr>

" disables arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Telescope shortcuts
nnoremap ff :Telescope find_files<cr>
nnoremap fg :Telescope live_grep<cr>
nnoremap fb :Telescope buffers<cr>
