return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  { "neoclide/coc.nvim", lazy = false, branch = "release", build = "npm install" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  { "neovim/nvim-lspconfig", enabled = false },
  { "hrsh7th/nvim-cmp", enabled = false },
  { "williamboman/mason.nvim", enabled = false },
  { "williamboman/mason-lspconfig.nvim", enabled = false },
  {
    "aurum77/live-server.nvim",
    build = function()
      require("live_server.util").install()
    end,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function()
      vim.g.codeium_no_map_tab = true
      vim.keymap.set('i', '<c-y>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
    end
  },
  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require "configs.lspconfig"
  --   end,
  -- },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
