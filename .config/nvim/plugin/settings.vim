"
" settings.vim
"

" Note: use :options to see a categorized list of options

" variables
let loaded_node_provider=0		" disable node provider
let loaded_perl_provider=0      " disable perl provider
let loaded_python_provider=0    " disable python2 provider
let loaded_ruby_provider=0      " disable ruby provider

" 1 important

" 2 moving arround, searching and patterns
set path+=**		        " recursively look through subdirectories when dealing with filepaths
set autochdir		        " switch to directory of file in buffer
set ignorecase		        " ignore case when searching
set smartcase		        " overwrite ignorecase when search pattern contains upper case characteres
set inccommand=nosplit          " show the effects of a command incrementally
set whichwrap=b,s,<,>,[,]	" allow <Left>, <Right>, <Backspace>, and <Space>, to move the cursor between lines

" 3 tags

" 4 displaying text
set number              " show absolute number of current line
set relativenumber	    " show line numbers relative tu cursor
set scrolloff=5         " keep a few lines arround the cursor
set sidescrolloff=5     " minimal number of columns to keep arround the cursor
set lazyredraw          " don’t redraw while executing macros

" 5 syntax, highlighting and spelling
syntax on			        " turn on syntax highlighting.
set nohlsearch              " don't highlight search matches
set cursorline		        " highlights current line
set spelllang=en,es,it		" enable spell-check in english, spanish, and italian
set spelloptions=camel      " enable spell-checking of camelCased words
set termguicolors           " use GUI colors for the terminal

" 6 multiple windows
set laststatus=1            " only show statusline with multiple windows
set hidden                  " hide a buffer when abandoned
set splitbelow splitright   " better split behaviour

" 7 multiple tab pages
set showtabline=0       " hide tabline

" 8 terminal
set icon        " set the text of the icon for this window

" 9 using the mouse
set mouse=a         " enable using the mouse if available

" 10 printing

" 11 messages and info
set noruler             " don’t show cursor position
set noerrorbells        " don’t beep on errors
set noshowmode		    " don’t show currenet mode
set shortmess+=ac       " use abbreviations for file messages and don’t pass them to the completion menu
set helplang+=es,it     " accept help in spanish and italian
set confirm				" start a dialog when a command fails

" 12 selecting text
set clipboard+=unnamedplus  " allways use the system’s clipboard

" 13 editing text
set completeopt=menuone,noinsert,noselect	" use popup menu for completion
set undofile                                " maintain undo history between sessions
set undodir=~/.config/nvim/undodir          " store undo history files
set infercase                               " case insensitivity for completion

" 14 tabs and indenting
set tabstop=4
set breakindent

" 15 folding
set foldlevelstart=99   " open files unfolded

" 16 diff mode

" 17 mapping

" 18 reading and writing files
set nobackup        " doesn’t store a backup after writing
set autoread        " automatically read a file when it was modified outside of Vim

" 19 the swap file
set noswapfile      " don’t swap files

" 20 command line editing
set history=1000                    " how many command lines are remembered
set wildmode=longest,list,full      " command line completion
set wildignorecase                  " ignore case when completing file names
set allowrevins                     " allow <Ctrl-_> to toggle backwards insertion

" 21 executing external commands

" 22 running make and jumping to errors

" 23 language specific

" 24 multi-byte characters

" 25 various
set virtualedit=block   " allow cursor to move where there is no text in visual block mode
set gdefault            " s///g is implied, explicitly adding g negates effect
set pyxversion=3        " use Python 3, not 2
