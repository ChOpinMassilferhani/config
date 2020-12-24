set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:termdebug_popup = 0
let g:termdebug_wide = 163

set number
set linebreak
set showbreak=+++
set textwidth=79    " 80 columns
set showmatch
set visualbell
set cursorline          " highlight current line

set autoindent   " New lines inherit the indentation of previous lines.
set expandtab     " Convert tabs to spaces.
set shiftround    " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=4     " When shifting, indent using four spaces.
set tabstop=4        " Indent using four spaces.

set hlsearch     " Enable search highlighting.
set ignorecase   " Ignore case when searching.
set incsearch " Incremental search that shows partial matches.
set smartcase " Automatically switch search to case-sensitive when search query contains an uppercase letter.

set ruler
set undolevels=1000
set backspace=indent,eol,start

" My term does not support the 24bit color so i must add this part
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif


colorscheme gruvbox
set background=dark

set encoding=utf-8 fileencodings=
syntax on
set showcmd
set wrap
set laststatus=2
set cc=80
autocmd Filetype make setlocal noexpandtab
set list listchars=tab:»·,trail:*
