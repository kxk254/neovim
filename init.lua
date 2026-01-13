-- vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require("lazy").setup({
    -- Your plugins go here
	{ import = "plugins" },

})

vim.api.nvim_create_autocmd("VimEnter",{
	callback = function()
		require("nvim-tree.api").tree.open()
	end,
})

-- Load core config
require("options")
require("keymaps")
