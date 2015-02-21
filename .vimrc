set nocompatible
syntax on
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'davidhalter/jedi-vim'

Plugin 'scrooloose/nerdtree'

Plugin 'guns/vim-clojure-static'

" javascript
Bundle "pangloss/vim-javascript"
Plugin 'scrooloose/syntastic'

Plugin 'flazz/vim-colorschemes'

Plugin 'vim-scripts/paredit.vim'

Plugin 'bling/vim-airline'

Plugin 'kien/ctrlp.vim'

Plugin 'ivanov/vim-ipython'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-commentary'

Plugin 'jpalardy/vim-slime'

Plugin 'kien/rainbow_parentheses.vim'

" I might want some of these for clojure

Plugin 'tpope/vim-fireplace'

" Plugin 'tpope/vim-dispatch'

Plugin 'tpope/vim-classpath'

" Plugin 'tpope/vim-projectionist'

" Plugin 'tpope/vim-leiningen'
call vundle#end()

"Always show statusline
set laststatus=2
filetype plugin indent on

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy and paste
set mouse=a
set bs=2

" nerdtree automatically if no file at startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map nerdtree to Ctrl-n
map <C-n> :NERDTreeToggle<CR>
map <A-Left> :tabp<CR>
map <A-Right> :tabn<CR>
map <C-t> :tabnew<CR>
" can escape to normal mode by typing "fd" quickly
" learned this trick from spacemacs!
:imap fd <Esc>

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256

" clojure specific tabstops
autocmd Filetype clojure setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
" js tabstops
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

colorscheme wombat256i

" Show linenumbers
set nu

let g:slime_target = "tmux"

" syntastic lint integration
let g:syntastic_check_on_open=1
