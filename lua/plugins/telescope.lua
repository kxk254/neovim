

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules/.*",
          "%.git/",
          "env/.*",
          "dist/.*",
          "build/.*",
        },
      },
    })
    pcall(require("telescope").load_extension, "fzf")
  end,
}

vim.keymap.set('n', '<leader>fF', function()
  require('telescope.builtin').find_files({
    no_ignore = true,
    hidden = true,
  })
end, { desc = "Find ALL files (no .gitignore, ignore node_modules & others)" })
