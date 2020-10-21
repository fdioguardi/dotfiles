"
" gruvbox.vim
"

" enable italic text
let g:gruvbox_italic = '1'

" use dark mode, hard contrast
let g:gruvbox_contrast_dark = 'hard'

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
" don’t invert color of highlighted text
let g:gruvbox_invert_selection='0'

colorscheme gruvbox
set background=dark

