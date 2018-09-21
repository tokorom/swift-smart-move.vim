function! s:start_edit()
  if getline('.')[col('.') - 1] == ':'
    if getline('.')[col('.') - 2] == '_'
      normal F_
      call feedkeys('cf:', 'n')
    else
      call feedkeys('a', 'n')
    endif
  endif
endfunction

function! swift_smart_move#edit_next_parameter()
  if col('.') + 1 == col('$')
    normal 0
  endif

  normal f:
  call s:start_edit()
endfunction

function! swift_smart_move#edit_previous_parameter()
  normal F:
  call s:start_edit()
endfunction
