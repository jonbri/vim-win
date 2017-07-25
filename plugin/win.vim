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
" https://vi.stackexchange.com/q/12995/2312
function! WrapIfSplit()
  let cmdline = getcmdline()
  if cmdline =~ '\v^vspl?i?t?$'
    return "\<C-U>vsplit \<bar> set nowrap\<CR>"
  elseif cmdline =~ '\v^spl?i?t?$'
    return "\<C-U>split \<bar> set nowrap\<CR>"
  endif
  return "\<CR>"
endfunction
cnoremap <expr><silent> <CR> WrapIfSplit()
