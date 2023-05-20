-- This file is responsible for installing and loading the configs
-- for those plugins (given as lua modules).

local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

-- Load the package manager.
cmd 'packadd paq-nvim'
local paq = require('paq').paq

-- Go (Golang)
paq {'fatih/vim-go'}

-- Real-time completion
paq {'neovim/nvim-lspconfig'}
paq {'hrsh7th/cmp-nvim-lsp'}
paq {'hrsh7th/cmp-buffer'}
paq {'hrsh7th/cmp-path'}
paq {'hrsh7th/cmp-cmdline'}
paq {'hrsh7th/nvim-cmp'}

-- Emmet
paq {'mattn/emmet-vim'}

-- Personal plugin to launch plugin GitHub repo
paq {'mudassir-ahmed/vim-plug-browse'}
-- g.deoplete.enable_at_startup = 1


-- Notifications
paq {'rcarriga/nvim-notify'}
require("notify").setup({
  background_colour = "#000000",
})

-- Floating command line
paq {'MunifTanjim/nui.nvim'}
-- paq {'VonHeikemen/fine-cmdline.nvim'}
paq {'folke/noice.nvim'}
require('noice').setup({})


-- TODO comments 
paq {'nvim-lua/plenary.nvim'}
paq {'folke/todo-comments.nvim'}
require("todo-comments").setup{}

-- NERDTree
-- paq {'preservim/nerdtree'}

-- Changes Vim working directory to project root (identified by presence of
-- known directory or file).
paq {'airblade/vim-rooter'}

-- Split and join smart using gS and gJ.
paq {'AndrewRadev/splitjoin.vim'}

-- Show highlight feedback.
paq {'machakann/vim-highlightedyank'}

-- {{ Themes

-- Install gruvbox theme.
paq {'morhetz/gruvbox'}

-- Install onedark theme.
paq {'joshdick/onedark.vim'}

paq {'Mofiqul/vscode.nvim'}
g.vscode_style = "dark"

paq {'marko-cerovac/material.nvim'}
g.material_style = "deep ocean"

paq {'bluz71/vim-moonfly-colors'}
cmd('colorscheme moonfly')

-- }}

-- Show startup screen when no buffers.
paq {'mhinz/vim-startify'}

-- A tree like view for symbols in Neovim using the Language Server Protocol.
paq {'simrat39/symbols-outline.nvim'}

-- Add icons for files.
paq {'ryanoasis/vim-devicons'}
-- paq {'kyazdani42/nvim-web-devicons'}

-- Required for telescope grep_string functionality.
-- paq {'BurntSushi/ripgrep'}

-- Add icons to telescope.
-- paq {'nvim-telescope/telescope-symbols.nvim'}

-- Show git line status in gutter.
paq {'airblade/vim-gitgutter'}

-- Show airline bar.
paq {'vim-airline/vim-airline'}
paq {'vim-airline/vim-airline-themes'}

-- Useful plugins.
paq {'tpope/vim-commentary'}
paq {'tpope/vim-fugitive'}
paq {'tpope/vim-surround'}

-- Adds better support for code hightlighting and refactoring
-- using syntax trees.
-- paq {'nvim-treesitter/nvim-treesitter'}

-- Distraction free programming.
paq {'junegunn/goyo.vim'}

-- Install lspconfig to enable lsp support.
paq {'neovim/nvim-lspconfig'}

-- Install fuzzy finder.
paq {'junegunn/fzf', run = fn['fzf#install']}
paq {'junegunn/fzf.vim'}

-- Install telescope plugin.
--paq {'nvim-lua/plenary.nvim'}
paq {'nvim-telescope/telescope.nvim'}

-- Call lua modules that configure plugins.
require('plugins/lspconfig')
require('plugins/telescope')
-- require('plugins/treesitter')
require('plugins/airline')
-- require('plugins/fine-cmdline')
require('plugins/nvim-cmp')

