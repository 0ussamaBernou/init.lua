  return {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.plugins.configs.null-ls"
    end,
  }
