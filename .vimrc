set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" plugin manager
Bundle 'gmarik/vundle'

" Creates a ) when you type (, a ' when you type ', a } when you type {, etc
Bundle 'Raimondi/delimitMate'

" Sublime-style searching
Bundle 'kien/ctrlp.vim'

"
Bundle 'tikhomirov/vim-glsl'

" File explorer
Bundle 'scrooloose/nerdtree'

" Awesome status line
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Use git commands from within Vim
Bundle 'tpope/vim-fugitive'

" Autocomplete and marginal syntax checking
Bundle 'Valloric/YouCompleteMe'

" Pretty color scheme
Bundle 'altercation/vim-colors-solarized'

" Python syntax folding
Bundle 'tmhedberg/SimpylFold'

" highlight changed lines
Bundle 'airblade/vim-gitgutter'

" Lots of colorscheme options
Bundle 'flazz/vim-colorschemes'

" Ruby static analysis
Bundle 'ngmy/vim-rubocop'

set modelines=0
set shiftwidth=4
set tabstop=4
set softtabstop=4
set showmatch
set showmode
set showcmd
set undofile
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set laststatus=2
set expandtab
set autoindent
set smartindent
set expandtab
set mouse=ia
set foldmethod=syntax
set backspace=indent,eol,start

set rnu

" searching options
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
nnoremap <leader><space> :noh<cr>

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

au FocusLost * :wa

inoremap jj <ESC>

" remap <C-[h/j/k/l]> to window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

syntax enable
set background=dark
let g:solarized_termcolors = 256
colorscheme herokudoc 

syntax on
filetype plugin indent on

let delimitMate_expand_cd = 1

" Easier JSON formatting
com! FormatJSON %!python -m json.tool

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Ignore these directories
set wildignore+=*/build/**
" disable caching
let g:ctrlp_use_caching=0

let g:netrw_liststyle=3

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Don't autofold code
let g:pymode_folding = 0

" NerdTree config
map <C-n> :NERDTreeToggle<CR>

" YouCompleteMe config
let g:ycm_key_detailed_diagnostics = '<leader>i'
map <leader>g :YcmCompleter GoTo
map <leader>D :YcmCompleter GoToDefinition
map <leader>d :YcmCompleter GetDoc

let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" other config
map <leader>v :vert new ~/.vimrc
map <leader>s !$sh
