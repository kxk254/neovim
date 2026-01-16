
-- Set leader key to space
vim.g.mapleader = " "   -- global leader

-- vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require("lazy").setup({
    -- Your plugins go here
	{ import = "plugins" },

})

-- vim.api.nvim_create_autocmd("VimEnter",{
-- 	callback = function()
-- 		require("nvim-tree.api").tree.open()
-- 	end,
-- })

-- Load core config
require("options")
require("keymaps")


-- Enable built-in OSC 52 support (Neovim ≥ 0.10)
-- If you're on older Neovim, this still usually works via the fallback:works
-- vim.g.clipboard = {
--   name = 'OSC 52',
--   copy = {
--     ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
--   },
--   paste = {
--     ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
--   },
-- }

-- Optional but very convenient: make normal yanks go to system clipboard
vim.opt.clipboard = 'unnamedplus'
