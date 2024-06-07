local plugins = {
  {
    {
      "Diogo-ss/42-header.nvim",
      cmd = { "Stdheader" },
      keys = { "<F1>" },
      opts = {
        default_map = true, -- Default mapping <F1> in normal mode.
        auto_update = true, -- Update header when saving.
        user = "touahman", -- Your user.
        mail = "touahman@student.1337.ma", -- Your mail.
        -- add other options.
      },
      config = function(_, opts)
        require("42header").setup(opts)
      end,
    },
    {
      "neovim/nvim-lspconfig",
      config = function ()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
      end,
    },
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd"
      }
    }
  }
}
return plugins
