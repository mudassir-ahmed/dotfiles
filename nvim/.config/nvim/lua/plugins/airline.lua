-- Automatically displays all buffers when there's only one tab open
vim.g['airline#extensions#tabline#enabled'] = 1
-- " let g:airline#extensions#tabline#left_sep = ' '
-- " let g:airline#extensions#tabline#left_alt_sep = '|'

-- if !exists('g:airline_symbols')
--     let g:airline_symbols = {}
-- endif

-- TODO: Move away from eval a chunch of vimscript
local result = vim.api.nvim_exec(
[[
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  let g:airline_symbols.branch = 'שׂ'
  let g:airline_symbols.dirty = " " 
  let g:airline_left_sep=''
  let g:airline_right_sep=''
endif
]],
true)

-- vim.g['airline_symbols'] = "{}"
vim.g['airline_powerline_fonts'] = 1

-- " unicode symbols
-- " let g:airline_left_sep = '»'
-- " let g:airline_left_sep = '▶'
-- " let g:airline_right_sep = '«'
-- " let g:airline_right_sep = '◀'
-- " let g:airline_symbols.linenr = '␊'
-- " let g:airline_symbols.linenr = '␤'
-- " let g:airline_symbols.linenr = '¶'
-- " let g:airline_symbols.branch = '⎇'
vim.g['airline_symbols.branch'] = 'שׂ'
-- " let g:airline_symbols.paste = 'ρ'
-- " let g:airline_symbols.paste = 'Þ'
-- " let g:airline_symbols.paste = '∥'
-- " let g:airline_symbols.whitespace = 'Ξ'
-- " let g:airline#extensions#tabline#formatter = 'unique_tail'
-- " https://github.com/vim-airline/vim-airline/issues/800
vim.g['airline_symbols.dirty'] = ' '
