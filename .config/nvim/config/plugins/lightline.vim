"
" lightline.vim
" bufferline.vim
"

let g:lightline = {
        \ 'colorscheme': 'onedark',
        \
        \ 'active': {
        \   'left': [ ],
        \
        \   'right': [ [ 'mode' ],
        \              [ 'gitbranch' ] ]
        \ },
        \
        \ 'inactive': {
        \   'left': [ [ 'filename' ] ],
        \
        \   'right': [ ]
        \ },
        \
        \ 'component_function': {
        \    'gitbranch': 'FugitiveHead',
        \ },
        \
        \ 'tabline': {
        \    'left': [ [ 'buffers' ] ],
        \
        \    'right': [ ]
        \ },
        \
        \ 'component_expand': {
        \    'buffers': 'lightline#bufferline#buffers'
        \ },
        \
        \ 'component_type': {
        \    'buffers': 'tabsel'
        \
        \ }
    \ }

" the name to use for unnamed buffers
let g:lightline#bufferline#unnamed = '[No Name]'
