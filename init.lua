-- vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require("lazy").setup({
    -- Your plugins go here
	{ import = "plugins" },

})

-- Load core config
require("options")
require("keymaps")