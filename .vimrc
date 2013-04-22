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
Bundle 'derekwyatt/vim-scala'
Bundle 'jpalardy/vim-slime'
Bundle 'dsbraz/tabnav-gvim'
Bundle 'dsbraz/indentblocks-vim'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'puppetlabs/puppet-syntax-vim'

syntax on
filetype on
filetype plugin on
filetype indent on

set nocompatible
set showmode
set showcmd
set autoindent
set autoread
set autowrite
set ruler
set sm
set cursorline
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set relativenumber
set showmatch
set mousehide
set noerrorbells
set vb t_vb=
set title
set hlsearch
set incsearch
set smartcase
set nobackup
set noswapfile
set directory=/tmp
set laststatus=2
set modelines=0
set backspace=indent,eol,start
set encoding=utf-8
set clipboard=unnamed
set guifont=Consolas:h14
set guioptions-=r
set guioptions-=L

if has('gui_running')
  set background=dark
  colorscheme solarized
endif

autocmd BufWritePre * :%s/\s\+$//e

set wildmenu
set wildmode=longest,list:longest

set complete=.,b,u,]
set completeopt=menu,preview

set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set statusline=%<\ %n:%f%m\ %r%y\ %{fugitive#statusline()}\ %=%-35.(\line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" Leader key
let mapleader=","

" Search and replace
nmap <leader>r * :%s/<C-r>///gc<left><left><left>

" Clear search buffer
nmap <esc> :nohlsearch<CR>

" Insert new line
imap <C-CR> <Esc>o
imap <C-S-CR> <Esc>O

" Indents
vmap > >gv
vmap < <gv
nmap > >>
nmap < <<

" Formatting
vmap F =
nmap F gg=G

" Toggle NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Toggle Taglist
nmap <C-l> :TlistToggle<CR>

" Next and previous tab
nmap <C-tab> :tabnext<CR>
nmap <C-S-tab> :tabprevious<CR>
