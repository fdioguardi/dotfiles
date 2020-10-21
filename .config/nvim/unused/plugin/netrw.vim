"
" netrw.vim
"

" open files in a a new vertical split
let g:netrw_browse_split = 2

" remove banner
let g:netrw_banner = 0

" use tree view
let g:netrw_liststyle = 3

" width of the directory explorer to 25% of the page
let g:netrw_winsize = 25

augroup ProjectDrawer
  autocmd!
"  autocmd VimEnter * :Vexplore
augroup END
