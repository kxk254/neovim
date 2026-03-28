return {
  "rest-nvim/rest.nvim",
    rocks = false,
  dependencies = {
	  {
    "nvim-treesitter/nvim-treesitter",
    opts = function (_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "http")
    end,
  },
    "nvim-neotest/nvim-nio",
    "j-hui/fidget.nvim",
    },
     config = function()
    require("rest-nvim").setup()
  end,
}
