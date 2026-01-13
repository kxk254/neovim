return {
  -- Core
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-lualine/lualine.nvim" },

  -- QoL
  { "folke/which-key.nvim" },
  { "numToStr/Comment.nvim" },
  { "lewis6991/gitsigns.nvim" },
  { "folke/trouble.nvim" },

  -- Completion + AI
  { "hrsh7th/nvim-cmp" },
  { "zbirenbaum/copilot-cmp" },
}