" win.vim - Windowing tweaks

" window management shortcuts
noremap <up> <C-W>+
noremap <down> <C-W>-
noremap <right> 3<C-W><
noremap <left> 3<C-W>>

" reduce other windows to a single unit of height
function! MinimizeOtherWindows()
  wincmd |
  wincmd _
endfunction
nnoremap <C-w>O :call MinimizeOtherWindows()<CR>

" reduce other windows by a few height units
function! CreepBigger()
  2 wincmd +
  4 wincmd >
endfunction
nnoremap <C-w>0 :call CreepBigger()<CR>

" prevent wrapping when opening a split
function! WIN_VerticalSplit()
  vsplit
  setlocal nowrap
endfunction
nnoremap <silent> :vsp :call WIN_VerticalSplit()<CR>
function! WIN_HorizontalSplit()
  split
  setlocal nowrap
endfunction
nnoremap <silent> :sp :call WIN_HorizontalSplit()<CR>
