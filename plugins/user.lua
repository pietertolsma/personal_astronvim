return {
        {
      "catppuccin/nvim",
      name = "catppuccin",
      config = function()
        require("catppuccin").setup {}
      end,

  },
  {
     "linux-cultist/venv-selector.nvim",
    event = "BufRead",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    config = function()
	    require("venv-selector").setup({})
    end,
  },

-- You can also add new plugins here as well:
-- Add plugins, the lazy syntax
-- "andweeb/presence.nvim",
-- {
--   "ray-x/lsp_signature.nvim",
--   event = "BufRead",
--   config = function()
--     require("lsp_signature").setup()
--   end,
  -- },
}
