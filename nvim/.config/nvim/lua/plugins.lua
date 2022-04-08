local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

-- load the package manager
cmd 'packadd paq-nvim'
local paq = require('paq').paq

paq {'kyazdani42/nvim-web-devicons'}
paq {'nvim-telescope/telescope-symbols.nvim'}
paq {'tpope/vim-commentary'}
paq {'tpope/vim-fugitive'}
paq {'tpope/vim-surround'}
paq {'vim-airline/vim-airline'}
paq {'vim-airline/vim-airline-themes'}
paq {'airblade/vim-gitgutter'}
paq {'junegunn/goyo.vim'}
paq {'joshdick/onedark.vim'}
paq {'mhinz/vim-startify'}
paq {'neovim/nvim-lspconfig'}
paq {'nvim-treesitter/nvim-treesitter'}
paq {'junegunn/fzf', run = fn['fzf#install']}
paq {'junegunn/fzf.vim'}
paq {'nvim-lua/plenary.nvim'}
paq {'nvim-telescope/telescope.nvim'}


require('telescope').setup{
}
