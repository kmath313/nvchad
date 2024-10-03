return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css", "fish", "gitcommit", "go",
        "gomod", "gosum", "gowork", "helm",
        "nix", "ssh_config", "yaml"
  		},
  	},
  },
  { "nvchad/volt" , lazy = true },
  { "nvchad/menu" , lazy = true },
  {
    "NvChad/nvcommunity",
    { import = "nvcommunity.tools.telescope-fzf-native" },
    { import = "nvcommunity.diagnostics.trouble" },
  },
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration
  
      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true
  },
  {
    "stevearc/aerial.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
      require("aerial").setup {
        layout = {
          max_width = { 40, 0.2 },
          min_width = 25,
        },
      }
    end,
  },
}
