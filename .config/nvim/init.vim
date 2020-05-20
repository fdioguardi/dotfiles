"      ___        ___          /__/\         /  /\         /  /\
"     /__/\      /  /\        |  |::\       /  /::\       /  /:/
"     \  \:\    /  /:/        |  |:|:\     /  /:/\:\     /  /:/
"      \  \:\  /__/::\      __|__|:|\:\   /  /:/~/:/    /  /:/  ___
"  ___  \__\:\ \__\/\:\__  /__/::::| \:\ /__/:/ /:/___ /__/:/  /  /\
" /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/ \  \:\/:::::/ \  \:\ /  /:/
" \  \:\|  |:|     \__\::/  \  \:\        \  \::/~~~~   \  \:\  /:/
"  \  \:\__|:|     /__/:/    \  \:\        \  \:\        \  \:\/:/
"   \__\::::/      \__\/      \  \:\        \  \:\        \  \::/
"       ~~~~                   \__\/         \__\/         \__\/



" Note: prepend 'no' to switch an option off
" e.g.: set ruler != set noruler

"" default
filetype plugin indent on		" enable filetype detection
filetype plugin on				" enable filetype plugins
source $VIMRUNTIME/mswin.vim


"" general options

" autocmd
autocmd BufWritePre * %s/\s\+$//e       " Remove trailing whitespace on save
autocmd FileType * setlocal formatoptions-=c formatoptions -=r formatoptions-=o     " disables automatic commenting on new line
autocmd InsertEnter * norm zz

" misc
set history=1000				" remember a few of commands
set nobackup                    " doesn’t store a backup after writing
set noswapfile                  " don’t swap files
set spelllang=en,es,it			" enable spell-check in english, spanish, and italian
set wildmode=longest,list,full  " filename completion
set path+=**					" recursively look through subdirectories when dealing with filepaths
set splitbelow splitright		" better split behaviour
set autochdir					" switch to files local directory

" UI
syntax on				" turn on syntax highlighting.
set number              " show absolute number of current line
set relativenumber		" show line numbers relative tu cursor
set mouse=a             " enable using the mouse if available
set scrolloff=3			" keep a few lines of contect arround the cursor
set noshowmode			" don’t show currenet mode
set showtabline=2		" always display the tabline, even if there is only one tab
set linebreak           " wrap/cut the line only on whitespace
set showmatch			" show matching braces when over one
set cursorline			" highlights current line

" whitespace and indentation
set tabstop=4           " a tab is four spaces
set shiftwidth=4        " N spaces while auto-indenting
set softtabstop=4   	" N spaces while editing (deletes groups of N spaces)
set smartindent	        " seems to do a decent job with indenting
set expandtab	    	" use spaces to insert a tab

" searching
set ignorecase		" ignore case when searching
set smartcase		" overwrite ignorecase when search pattern contains upper case characteres
set gdefault        " s///g is implied, explicitly adding g negates effect


"" mappings

" leader key
let mapleader=' '
nnoremap <leader>/ :let @/=''<CR>:noh<CR>|      " clear search
map <leader>o :setlocal spell!

" html template
nnoremap <leader>html :-1read $HOME/.config/nvim/templates/skeleton.html<CR>Gdd4kwf>a

" c# template
nnoremap <leader>cs :-1read $HOME/.config/nvim/templates/skeleton.cs<CR>Gdd2kO

" bash template
nnoremap <leader>sh :-1read $HOME/.config/nvim/templates/skeleton.sh<CR>o<Del>

" remove arrow keys
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>

set whichwrap=b,s,<,>,[,]		" allow <Left>, <Right>, <Backspace>, and <Space>, to move the cursor from the start of a line to the begining of the other and viceversa

" since I constantly mess these up when going fast
command WQ wq
command Wq wq
command W w
command Q q

" w!! to write with sudo even if not opened with sudo
cmap w!! w !sudo tee >/dev/null %

" when searching, after pressing enter, press Ctrl to ignore special characters like accent/diacritics
cnoremap <CR> <C-\>e getcmdtype() =~ '[?/]' ? substitute(getcmdline(), '\a', '[[=\0=]]', 'g'): getcmdline()<CR><CR>

" move a selected text up or down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

" aliased replace all command
nnoremap S :%s//


"" plugin section

" auto-install Plug if it’s not already there
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')	" start reading plugins
Plug 'preservim/nerdtree'		            " directory browser
Plug 'itchyny/lightline.vim'    		    " status line
Plug 'morhetz/gruvbox'                      " gruvbox colorscheme
call plug#end()							    " stop reading plugins

" plugin options

" nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())   "close vim if only window open is NERDTree
map <C-n> :NERDTreeToggle<CR>

" lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
\ }

" gruvbox
colorscheme gruvbox
