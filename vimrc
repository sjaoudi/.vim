set relativenumber


" control-n switches between line numberings
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" absolute numbering in insert mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" disable arrow keys :^)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

syntax on

colorscheme elflord
highlight LineNr ctermfg=grey

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab ts=4 sw=4 ai

:au FocusLost * :set number
:au FocusGained * :set relativenumber

" remove banner in explorer
let g:netrw_banner = 0
