-- =============================================
-- Clean init.lua for lazy.nvim + rest.nvim
-- =============================================
vim.g.lazy_use_rocks = false 

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

-- Plugin setup (single call)
require("lazy").setup({
  -- rest.nvim plugin
  {
    "rest-nvim/rest.nvim",
    dependencies = { 
	    "nvim-lua/plenary.nvim",
	    "j-hui/fidget.nvim",
	    "nvim-neotest/nvim-nio",
	    "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("rest-nvim").setup()
    end
  },

  -- other plugins can go here, or import your plugins folder
  { import = "plugins" }, 
}, {
  rocks = {
    enabled = false,
  },
})

-- Your options and keymaps
require("options")
require("keymaps")

-- Clipboard convenience
vim.opt.clipboard = 'unnamedplus'
