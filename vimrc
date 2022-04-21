set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'davidhalter/jedi-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'tomasr/molokai'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'hynek/vim-python-pep8-indent'
"Plug 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
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
"
set encoding=utf-8
set termencoding=utf-8
set laststatus=2
set autoindent
set t_Co=256
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set showmatch
set ignorecase
set hlsearch
set cursorline
set colorcolumn=100
"set nowrap
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set nofoldenable

set number
set relativenumber
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

imap jk <Esc>
let g:airline_powerline_fonts = 1
colorscheme molokai
let g:molokai_original = 1
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"map j to gj and k to gk, so line navigation ignores line wrap
"let g:SuperTabMappingForward = '<C-space>'
"let g:SuperTabMappingBackward = '<A-space>'
nmap j gj
nmap k gk
nnoremap j gj
nnoremap k gk
" ENTER in EDIT mode inserts a new line below
nmap <CR> o<Esc>
let g:syntastic_cpp_compiler_options="-std=c++14 -stdlib=libc++"
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_python_exec = '/usr/bin/env python3'
let g:syntastic_python_flake8_args='--max-line-length=100'
"let g:tagbar_width = 20
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
set mouse=a         " Enable the use of the mouse.
filetype plugin indent on
syntax on
autocmd BufRead,BufNewFile *.md setlocal filetype=markdown spelllang=en_us spell makeprg=pandoc\ -o\ %<.pdf\ %;\ pdfopen\ %<.pdf\ &
let g:markdown_folding = 0
autocmd BufRead,BufNewFile *.tex setlocal spelllang=en_us spell makeprg=pdflatex\ %;\ pdfopen\ %<.pdf
