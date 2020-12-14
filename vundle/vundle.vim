" Loads the Vundle Vim plugin manager. To install:
" 1) Clone the vundle repo:
" $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
" 2) Load Vundle in ~/.vimrc:
" source ~/.vim/vundle.vim
"
" 3) Run :PluginInstall in vim.
"
" -----------------------------------------------------------------------------
" Vundle Plugins
" -----------------------------------------------------------------------------

" Needed for plugins to work correctly
set shell=bash

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'mileszs/ack.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'hashivim/vim-hashicorp-tools'
Plugin 'fatih/vim-hclfmt'
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'sheerun/vim-polyglot'
Plugin 'racer-rust/vim-racer'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'cespare/vim-toml'
Plugin 'tpope/vim-unimpaired'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'stephpy/vim-yaml'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


" -----------------------------------------------------------------------------
"  Plugin Configuration
" -----------------------------------------------------------------------------

" AutoSave
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" NerdTree
nnoremap <leader>f :NERDTreeToggle<CR>
