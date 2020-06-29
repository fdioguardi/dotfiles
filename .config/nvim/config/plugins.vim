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
    Plug 'morhetz/gruvbox'                  " gruvbox colorscheme
    Plug 'airblade/vim-gitgutter'           " show line differences according to git
    Plug 'ap/vim-css-color'                 " color highlighter
    Plug 'junegunn/rainbow_parentheses.vim' " colorizes matching pairs of parenthesis

" Functionalitiy
    Plug 'tpope/vim-commentary'             " Even faster commenting
    Plug 'preservim/nerdtree'		        " directory browser
    Plug 'tpope/vim-fugitive'               " Git from inside Vim
    Plug 'unblevable/quick-scope'           " higlightes unique characters on current line
    Plug 'psliwka/vim-smoothie'             " smooth scroll for <C-u> <C-d>

" Languages
    Plug 'sheerun/vim-polyglot'             " language pack
    Plug 'lervag/vimtex'

" Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}     " autocompletion
    Plug 'honza/vim-snippets'               " snippets pack

call plug#end()							    " stop reading plugins

" coc
source $HOME/.config/nvim/config/plugins/coc.vim

" polyglot
source $HOME/.config/nvim/config/plugins/polyglot.vim

" nerd tree
source $HOME/.config/nvim/config/plugins/nerdtree.vim

" gruvbox
source $HOME/.config/nvim/config/plugins/gruvbox.vim

" rainbow_parenthesis
source $HOME/.config/nvim/config/plugins/rainbow_parenthesis.vim

" vimtex
source $HOME/.config/nvim/config/plugins/vimtex.vim
