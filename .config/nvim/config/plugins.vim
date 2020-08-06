"
" plugins.vim
"

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')	" start reading plugins

" UI
    Plug 'Yggdroot/indentLine'              " vertical lines at each indentation level
    Plug 'itchyny/lightline.vim'            " status line
    Plug 'junegunn/rainbow_parentheses.vim' " colorizes matching pairs of parenthesis
    Plug 'mengelbrecht/lightline-bufferline'    " buffers in status line
    Plug 'norcalli/nvim-colorizer.lua'      " color highlighter

" Colorschemes
    Plug 'joshdick/onedark.vim'             " onedark colorscheme
    " Plug 'morhetz/gruvbox'                  " gruvbox colorscheme

" Functionalitiy
    Plug 'junegunn/fzf',
        \{ 'do': { -> fzf#install() } }     " main fzf logic
    Plug 'junegunn/fzf.vim'                 " vim’s adaptation for fzf
    Plug 'psliwka/vim-smoothie'             " smooth scroll for <C-u> <C-d>
    Plug 'tpope/vim-commentary'             " Even faster commenting
    Plug 'tpope/vim-fugitive'               " Git from inside Vim
    Plug 'unblevable/quick-scope'           " higlightes unique characters on current line

" Languages
    Plug 'sheerun/vim-polyglot'             " language pack

" Completion
    Plug 'neoclide/coc.nvim',
        \{'branch': 'release'}              " autocompletion

call plug#end()							    " stop reading plugins

" coc
source $HOME/.config/nvim/config/plugins/coc/coc.vim

" polyglot
source $HOME/.config/nvim/config/plugins/polyglot.vim

" rainbow_parenthesis
source $HOME/.config/nvim/config/plugins/rainbow_parenthesis.vim

" nvim-colorizer
luafile $HOME/.config/nvim/config/plugins/nvim-colorizer.lua

" fzf
source $HOME/.config/nvim/config/plugins/fzf.vim

" indentLine
source $HOME/.config/nvim/config/plugins/indentline.vim

" lightline
source $HOME/.config/nvim/config/plugins/lightline.vim
