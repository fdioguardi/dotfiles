" set leader key
map <Space> <Nop>
let mapleader=' '

" clear search
nnoremap <leader>/ :noh<CR>:call clearmatches()<CR>

" since I constantly mess these up when going fast
command WQ wq
command Wq wq
command W up
command Q q
nmap q: <silent>

" when searching, after pressing enter, press Ctrl to ignore special characters like accent/diacritics
" cnoremap <CR> <C-\>e getcmdtype() =~ '[?/]' ? substitute(getcmdline(), '\a', '[[=\0=]]', 'g'): getcmdline()<CR><CR>

" move a selected text up or down
xnoremap K :call mappings#visual#move_up()<CR>
xnoremap J :call mappings#visual#move_down()<CR>

" generic substitute
vnoremap <leader>s :s/
nnoremap <leader>s :%s/

" globally replace a word or selection
nnoremap <leader>S :%s/\<<C-r><C-w>\>/
vnoremap <leader>S y:%s/<c-r>"/

" Use actual regex when searching
nnoremap / /\v
vnoremap / /\v

" Y now yanks until the end of the line
map Y y$

" marks go to exact line and column
nnoremap ' `

" ]b in normal mode will move to next buffer
nnoremap ]b :bnext<CR>
" [b in normal mode will move to previous buffer
nnoremap [b :bprevious<CR>

" gf creates file if nonexistent
nnoremap gf :e <cfile><CR>

" highlight after indenting
vnoremap < <gv
vnoremap > >gv

" Better window navigation between splits
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-l> <c-w>l
nnoremap <c-k> <c-w>k
vnoremap <c-h> <c-w>h
vnoremap <c-j> <c-w>j
vnoremap <c-l> <c-w>l
vnoremap <c-k> <c-w>k
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Q executes macro in 'q' instead of entering Ex mode
nnoremap Q @q
xnoremap Q :norm @q<CR>

" close buffer
nnoremap ZB :bd<CR>

" cycle through relativenumber + number, number (only), and no numbering (mnemonic: number).
nnoremap <silent> <leader>n :call mappings#leader#cycle_numbering()<CR>

" backspace in Visual mode deletes selection
vnoremap <BS> d

" use CTRL-S for saving
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<Esc>:update<CR>gi

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u
