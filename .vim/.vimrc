"set nocompatible
call plug#begin()
Plug 'bronson/vim-trailing-whitespace'
Plug 'davidhalter/jedi-vim'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tomasr/molokai'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'hynek/vim-python-pep8-indent'
Plug 'valloric/youcompleteme'
call plug#end()
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
autocmd BufRead,BufNewFile *.tex setlocal spelllang=en_us spell makeprg=pdflatex\ %;\ pdfopen\ %<.pdf
