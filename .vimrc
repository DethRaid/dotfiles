set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin manager
Plugin 'VundleVim/Vundle.vim'

" Creates a ) when you type (, a ' when you type ', a } when you type {, etc
Plugin 'Raimondi/delimitMate'

" Sublime-style searching
Plugin 'kien/ctrlp.vim'

"
Plugin 'tikhomirov/vim-glsl'

" File explorer
Plugin 'scrooloose/nerdtree'

" Linting
Plugin 'scrooloose/syntastic'

" Awesome status line
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Use git commands from within Vim
Plugin 'tpope/vim-fugitive'

" Autocomplete and marginal syntax checking
Plugin 'Valloric/YouCompleteMe'

" Pretty color scheme
Plugin 'altercation/vim-colors-solarized'

" Python syntax folding
Plugin 'tmhedberg/SimpylFold'

" highlight changed lines
Plugin 'airblade/vim-gitgutter'

" Lots of colorscheme options
Plugin 'flazz/vim-colorschemes'

" Ruby static analysis
Plugin 'ngmy/vim-rubocop'

" Javascript things
Plugin 'pangloss/vim-javascript'

" JSON things
Plugin 'helino/vim-json'

" fix alignment issues
Plugin 'junegunn/vim-easy-align'

" JS completion
Plugin 'marijnh/tern_for_vim'

call vundle#end()
filetype plugin indent on

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
set autoread

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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" other config
map <leader>v :vert new ~/.vimrc
map <leader>s !$sh

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" neovim configuration
let g:python3_host_prog = '/usr/local/bin/python3'
let g:loaded_python_provider = 1
