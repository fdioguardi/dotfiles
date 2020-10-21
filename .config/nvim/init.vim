"
" init.vim
"

call plug#begin('~/.config/nvim/bundle')    " start reading plugins

    " UI
        " Plug 'itchyny/lightline.vim'            " status line
        Plug 'junegunn/rainbow_parentheses.vim' " colorizes matching pairs of parenthesis

    " Colorschemes
        "Plug 'joshdick/onedark.vim'             " onedark colorscheme
        Plug 'morhetz/gruvbox'                  " gruvbox colorscheme

    " Functionalitiy
        Plug 'junegunn/fzf',
            \{ 'do': { -> fzf#install() } }     " main fzf logic
        Plug 'junegunn/fzf.vim'                 " vim’s adaptation for fzf
        Plug 'tpope/vim-surround'               " simple quoting/parenthesizing
        Plug 'tpope/vim-commentary'             " faster commenting
        Plug 'tpope/vim-fugitive'               " git from inside Vim

    " Syntax highlighting
        Plug 'sheerun/vim-polyglot'             " language pack

    " Language Server Protocol
        Plug 'neovim/nvim-lspconfig'
        Plug 'nvim-lua/completion-nvim'

call plug#end()	    " stop reading plugins
