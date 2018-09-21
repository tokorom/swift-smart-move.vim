if get(g:, 'swift_smart_move#default_keymaps_enabled', 1)
  inoremap <silent> <C-f> <Esc>:<C-u>:call swift_smart_move#edit_next_parameter()<CR>
  inoremap <silent> <C-b> <Esc>:<C-u>:call swift_smart_move#edit_previous_parameter()<CR>
endif
