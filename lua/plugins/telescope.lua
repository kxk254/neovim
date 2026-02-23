return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
	      hidden = true,
        file_ignore_patterns = {
          "^%.git/",
          "node_modules/",
          "env/",
          "dist/",
          "build/",
          "__pycache__/",
        },
      },
    })

    -- Load fzf extension
    pcall(telescope.load_extension, "fzf")

    -- Keymaps must be inside config function
    -- Normal <leader>ff mapping
    vim.keymap.set("n", "<leader>ff", function()
      require("telescope.builtin").find_files()
    end, { desc = "Find files (respects gitignore + custom ignores)" })

    -- Nuclear / show-all-files mapping
    vim.keymap.set("n", "<leader>fF", function()
      require("telescope.builtin").find_files({
        prompt_title = "Find ALL files (except .git folder)",
        hidden = true,
        no_ignore = true,
        follow = true,
        find_command = {
          "rg",
          "--files",
          "--no-ignore",
          "--hidden",
          "--follow",
          "--glob", "!.git/**",
          "--glob", "!node_modules/**",
          "--glob", "!env/**",
          "--glob", "!dist/**",
          "--glob", "!build/**",
          "--glob", "!.next/**",
        },
      })
    end, { desc = "Find almost everything (except .git / node_modules etc.)" })
  end,
}
