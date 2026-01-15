vim.keymap.set("n", "tn", function()
  vim.wo.relativenumber = not vim.wo.relativenumber
  vim.wo.number = true -- always keep absolute numbers on
end, { desc = "Toggle relative numbers" })

-- Leader for Git shortcuts
vim.keymap.set("n", "<leader>gs", ":Git<CR>", { desc = "Git status" })
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>ga", ":Git add %<CR>", { desc = "Git add current file" })
vim.keymap.set("n", "<leader>gA", ":Git add .<CR>", { desc = "Git add all changes" })
vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gf", ":Git fetch<CR>", { desc = "Git fetch" })
vim.keymap.set("n", "<leader>gl", ":Git log<CR>", { desc = "Git log" })
vim.keymap.set("n", "<leader>gd", ":Git diff<CR>", { desc = "Git diff" })
vim.keymap.set("n", "<leader>gD", ":Gvdiffsplit<CR>", { desc = "Git diff split" })
vim.keymap.set("n", "<leader>gb", ":Git branch<CR>", { desc = "Git branches" })
vim.keymap.set("n", "<leader>gco", ":Git checkout ", { desc = "Git checkout" })

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})