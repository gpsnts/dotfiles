" _   _                 _                 _       _         _ 
"| \ | | ___  _____   _(_)_ __ ___     __| | ___ | |_ ___  | |
"|  \| |/ _ \/ _ \ \ / / | '_ ` _ \   / _` |/ _ \| __/ __| | |
"| |\  |  __/ (_) \ V /| | | | | | | | (_| | (_) | |_\__ \ |_|
"|_| \_|\___|\___/ \_/ |_|_| |_| |_|  \__,_|\___/ \__|___/ (_)
" By: @gpsnts


" Plugins
call plug#begin()
" Starpage
Plug 'mhinz/vim-startify'

" Async runner
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Syntax checker/autocomplete
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'dense-analysis/ale'

" Rooter
Plug 'airblade/vim-rooter'

" Text-allign
Plug 'godlygeek/tabular'
Plug 'lifepillar/vim-colortemplate'

" Files
Plug 'tpope/vim-eunuch'

" Repeat
Plug 'tpope/vim-repeat'

" Auto-indent
Plug 'tpope/vim-sleuth'

" Close tag
Plug 'alvan/vim-closetag'

" Ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-signify'

" Nerdtree
Plug 'preservim/nerdtree'

" Float term 
Plug 'voldikss/vim-floaterm'

" Neomake
Plug 'neomake/neomake'

" Snippets
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'

" Interactive shell
Plug 'metakirby5/codi.vim'

" Numbers
Plug 'myusuf3/numbers.vim'

" Autopairs

" Aesthetics
Plug 'kizza/actionmenu.nvim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/limelight.vim'

" Functionalities
Plug 'editorconfig/editorconfig-vim' 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-abolish'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-unimpaired'
Plug 'brooth/far.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'jkramer/vim-checkbox'
call plug#end()

"" Misc

" A.L.E
let g:ale_disable_lsp = 1

" Ergonomy
filetype plugin indent on
syntax enable
set backspace=eol,start,indent
set whichwrap=<,>,h,l,[,]

" OS misc
set fileformats=unix,dos,mac
set hidden

" Visual
set noexpandtab
set tabstop=2
set shiftwidth=2
set encoding=UTF-8
set guifont=Hack\ Nerd\ Font:h18
set noshowmode
set shortmess+=F
set colorcolumn=80,125 " Github style
set noshowcmd

" Simple keybindings/configs
" Mouse uptime
let g:cursorhold_updatetime = 5

" Nerdtree
nnoremap <C-b> :NERDTreeToggle<CR>

" Floaterm
nnoremap <A-t> :FloatermToggle<CR>

source $HOME/.config/nvim/plug-config/vim-devicons.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/vim-commentary.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/codi.vim
source $HOME/.config/nvim/plug-config/vim-wiki.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/gitgutter.vim
source $HOME/.config/nvim/plug-config/closetags.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/vista.vim
source $HOME/.config/nvim/plug-config/key-configs.vim
source $HOME/.config/nvim/plug-config/nerd-configs.vim
