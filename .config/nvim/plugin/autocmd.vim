"
" autocmd.vim
"

function! TrimWhiteSpace() abort
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfunction

augroup custom_group
  autocmd!
  autocmd BufWritePre  * :call TrimWhiteSpace()
  autocmd TextYankPost * lua vim.highlight.on_yank{ timeout = 300, on_visual = false }
augroup END

augroup vimrc_incsearch_highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

augroup number_toggle
  autocmd!
  autocmd BufEnter,FocusGained,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,WinLeave   * if &nu | set nornu | endif
augroup END
