set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/taglist.vim'
Bundle 'docunext/closetag.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'ervandew/supertab'
Bundle 'jpalardy/vim-slime'
Bundle 'dsbraz/indentblocks-vim'
Bundle 'dsbraz/tabnav-gvim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'puppetlabs/puppet-syntax-vim'

set nocompatible
set showmode
set showcmd
set autoindent
set autoread
set autowrite
set ruler
set tabstop=2
set sm
set cursorline
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set showmatch
set mousehide
set noerrorbells
set vb t_vb=
set title
set hlsearch
set incsearch
set smartcase
set nowrap
set nobackup
set noswapfile
set directory=/tmp
set laststatus=2
set modelines=0
set backspace=indent,eol,start
set relativenumber
set encoding=utf-8
set clipboard=unnamed
set guifont=Consolas:h14
set guioptions-=r
set guioptions-=L

syntax enable

if has('gui_running')
  set background=dark
  colorscheme solarized
endif

autocmd BufWritePre * :%s/\s\+$//e

filetype on
filetype plugin on
filetype indent on

set wildmenu
set wildmode=longest,list:longest

set complete=.,b,u,]
set completeopt=menu,preview

set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set statusline=%<\ %n:%f%m\ %r%y\ %{fugitive#statusline()}\ %=%-35.(\line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" Leader key
let mapleader=","

" Clear the search buffer when hitting return
nmap <CR> :nohlsearch<CR>

" Search and replace
nmap <leader>s * :%s/<C-r>///gc<left><left><left>

" Indents
vmap <silent> > >gv
vmap <silent> < <gv
nmap <silent> > >>
nmap <silent> < <<

" Formatting
vmap F =
nmap F gg=G

" Ctrl-P
let g:ctrlp_map = '<leader>o'
let g:ctrlp_cmd = 'CtrlP'
nmap <silent> <leader>b <Esc>:CtrlPBuffer<CR>

" Toggle Taglist
nmap <silent> <leader>t :TlistToggle<cr>

" Toggle NERDTree
nmap <silent> <leader>p :NERDTreeToggle<CR>

" Next and previous tab
nmap <silent> <C-tab> :tabnext<CR>
nmap <silent> <C-S-tab> :tabprevious<CR>
