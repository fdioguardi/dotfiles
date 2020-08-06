" set leader key
map <Space> <Nop>
let mapleader=' '

" clear search
nnoremap <leader>/ :let @/=''<CR>:noh<CR>|

" orthography check
map <leader>o :setlocal spell!<Cr>

" remove arrow keys
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

set whichwrap=b,s,<,>,[,]		" allow <Left>, <Right>, <Backspace>, and <Space>, to move the cursor from the start of a line to the beginning of the other and viceversa

" since I constantly mess these up when going fast
command WQ wq
command Wq wq
command W up
command Q q
nmap q: <silent>

" w!! To write with sudo even if not opened with sudo
" cmap w!! w !sudo tee >/dev/null %
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" when searching, after pressing enter, press Ctrl to ignore special characters like accent/diacritics
cnoremap <CR> <C-\>e getcmdtype() =~ '[?/]' ? substitute(getcmdline(), '\a', '[[=\0=]]', 'g'): getcmdline()<CR><CR>

" move a selected text up or down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

" aliased 'replace all' command
nnoremap S :%s/

" Y now yanks until the end of the line (not vi-compatible)
map Y y$

" <Ctrl-h> corrects last mistake in insert mode
inoremap <C-h> <c-g>u<Esc>[s1z=`]a<c-g>u

" marks go to exact line and column
nnoremap ' `

" Use alt + hjkl to resize splits
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in normal mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" highlight after indenting
vnoremap < <gv
vnoremap > >gv

" Better window navigation between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" gf creates file if nonexistent
nnoremap gf :e <cfile><CR>

" stay at current word when using star search
nnoremap * *<c-o>


