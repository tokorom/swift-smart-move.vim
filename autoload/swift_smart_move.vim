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

function! s:move_to_behind_of_bracket()
  let before = col('.')
  normal f)
  if before != col('.')
    call feedkeys('a', 'n')
  else
    call feedkeys('A', 'n')
  endif
endfunction

function! swift_smart_move#edit_next_parameter()
  if col('.') + 1 == col('$')
    normal 0
  endif

  if getline('.')[col('.')] == '"'
    normal hf"
    call feedkeys('a', 'n')
    return
  endif

  let before = col('.')
  normal f:
  if before != col('.')
    call s:start_edit()
  else
    call s:move_to_behind_of_bracket()
  endif
endfunction

function! swift_smart_move#edit_previous_parameter()
  normal F:
  call s:start_edit()
endfunction
