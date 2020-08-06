"
" colors.vim
"

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set background=dark

" gruvbox
" source $HOME/.config/nvim/config/colors/gruvbox.vim

" onedark
source $HOME/.config/nvim/config/colors/onedark.vim
