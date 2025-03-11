" Automatically install vim-plug
" let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin('~/.vim/plugged')

" Vim Plugins
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'chrisbra/csv.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/vim-auto-save'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-hashicorp-tools'
Plug 'fatih/vim-hclfmt'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'cespare/vim-toml'
Plug 'tpope/vim-unimpaired'
Plug 'christoomey/vim-tmux-navigator'
Plug 'stephpy/vim-yaml'

" Vim only Plugins
if has('vim')
    Plug 'rust-lang/rust.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug 'racer-rust/vim-racer'
endif

" Neovim Plugins
if has('nvim')
    " Copilot
    " TODO: This has a conflict with the Tab key mapping.
    Plug 'github/copilot.vim'
    " Completion framework
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/nvim-compe'
    " LSP completion source for nvim-cmp
    Plug 'hrsh7th/cmp-nvim-lsp'
    " Snippet completion source for nvim-cmp
    Plug 'hrsh7th/cmp-vsnip'
    " Other usefull completion sources
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-buffer'
    " Snippet engine
    Plug 'hrsh7th/vim-vsnip'
    " Collection of common configurations for the Nvim LSP client
    Plug 'neovim/nvim-lspconfig'
    " Fuzzy finder
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    " To enable more of the features of rust-analyzer, such as inlay hints and more!
    Plug 'simrat39/rust-tools.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'folke/trouble.nvim'
    " Themes and styling
    Plug 'akinsho/bufferline.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'Mofiqul/dracula.nvim'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'navarasu/onedark.nvim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'glepnir/zephyr-nvim'
    Plug 'titanzero/zephyrium'
endif

" Initialize plugin system
call plug#end()


" -----------------------------------------------------------------------------
"  Plugin Configuration
" -----------------------------------------------------------------------------

" AutoSave
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>N :NERDTreeToggle<CR>

