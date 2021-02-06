" _   _                 _                 _       _         _ 
"| \ | | ___  _____   _(_)_ __ ___     __| | ___ | |_ ___  | |
"|  \| |/ _ \/ _ \ \ / / | '_ ` _ \   / _` |/ _ \| __/ __| | |
"| |\  |  __/ (_) \ V /| | | | | | | | (_| | (_) | |_\__ \ |_|
"|_| \_|\___|\___/ \_/ |_|_| |_| |_|  \__,_|\___/ \__|___/ (_)

call plug#begin()

" \"Gitlens\"
Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'iamcco/git-p.nvim'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nerdfont handlr
" Plug 'ambdalisue/nerdfont.vim'
Plug 'antoinemadec/FixCursorHold.nvim'

" CtrlP
Plug 'kien/ctrlp.vim'

" easymotion
Plug 'easymotion/vim-easymotion'

" .jsx
Plug 'maxmellon/vim-jsx-pretty'

" .kt
Plug 'udalov/kotlin-vim'

" Files
Plug 'tpope/vim-eunuch'

" Repeat
Plug 'tpope/vim-repeat'

" Vim-rooter
Plug 'airblade/vim-rooter'

" Auto-indent
Plug 'tpope/vim-sleuth'

" Close tag
Plug 'alvan/vim-closetag'

" Ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git, mané
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Nerdtree
Plug 'preservim/nerdtree'

" Terminal, seu lindo
Plug 'voldikss/vim-floaterm'

" Brincadeira de criança
Plug 'neomake/neomake'

" Snippets, no formato da garrafa
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

" Interactive code 4 dummies
Plug 'metakirby5/codi.vim'

" Numbers
Plug 'myusuf3/numbers.vim'

" Aesthetics - Main
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/limelight.vim'

" Functionalities
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-abolish'
Plug 'Yggdroot/indentLine'

" Polyglots confs
Plug 'sheerun/vim-polyglot'


Plug 'chrisbra/Colorizer'
Plug 'KabbAmine/vCoolor.vim'
Plug 'vim-scripts/loremipsum'
Plug 'metakirby5/codi.vim'
Plug 'dkarter/bullets.vim'

" FZF
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" Things
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-commentary'
Plug 'rhysd/vim-grammarous'
Plug 'lambdalisue/suda.vim'
Plug '907th/vim-auto-save'
Plug 'mhinz/vim-startify'

call plug#end()

" Cursor uptime
let g:cursorhold_updatetime = 100

set tabstop=2
set shiftwidth=2
set encoding=UTF-8
set guifont=Hack\ Nerd\ Font:h18
set noshowmode
set shortmess+=F
set noshowcmd

" O restante peguei do https://github.com/ChristianChiarulli/ porque sou preguiçoso para essas porras

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
source $HOME/.config/nvim/plug-config/quickscope.vim
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
