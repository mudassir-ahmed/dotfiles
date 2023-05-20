local ts = require('nvim-treesitter.configs')

-- See also https://github.com/nicknisi/dotfiles/blob/main/config/nvim/lua/plugins/treesitter.lua

ts.setup {
  ensure_installed = 'maintained',
  highlight = {
    enable = true,
    use_languagetree = true
  },
  context_commentstring = {
    enable = true
  },
  indent = {enable = true},
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- automatically jump forward to matching textobj
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner"
      }
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>a"] = "@parameter.inner"
      },
      swap_previous = {
        ["<leader>A"] = "@parameter.inner"
      }
    }
  }
}
