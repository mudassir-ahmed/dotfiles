local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

-- Show line number.
opt.number = true

-- Show relative line number.
opt.relativenumber = true

-- Don't wrap long lines.
opt.wrap = false

-- 80 characters indication.
opt.colorcolumn = "80"

-- Use case insensitive search, except when using capital letters.
opt.ignorecase = true
opt.smartcase = true

-- Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
-- which is the default.
--map Y y$

-- Show all matching files when tab autocomplete
-- instead of first match.
opt.wildmenu = true

-- Show (partial) command in the last line of the screen
-- and shows useful info in visual mode.
opt.showcmd = true

-- Open new split panes to right and bottom.
opt.splitbelow = true
opt.splitright = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 4

-- Customise indentation.
-- Defines the number of spaces that a tab character in the file counts for.
opt.tabstop = 4

-- Copy the structure of the existing lines indent when autoindenting a new line.
opt.copyindent = true

-- Replace tabs by whitespace characters.
opt.expandtab = true

-- Tabs equal to 2 white space characters when using '>'.
opt.shiftwidth = 2

-- Search subfolders.
--opt.path += "**"

-- No double spaces with join.
opt.joinspaces = false

-- True color support.
opt.termguicolors = true





