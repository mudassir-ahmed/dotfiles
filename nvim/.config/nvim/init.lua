-- Some inspiration from https://oroques.dev/2020/01/07/neovim-05.html
-- https://microsoft.github.io/language-server-protocol/implementors/servers/
-- https://github.com/nanotee/nvim-lua-guide


local api = vim.api
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')

-- Settings
require('settings')
require('plugins')

-- Map leader to space
g.mapleader = ' '

-- Map helper function
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Telescope find files
-- map('n', '<space><space>', '<cmd>Telescope git_files hidden=true<CR>')
-- map('n', '<space><space>', '<cmd>Telescope find_files hidden=true<CR>')


