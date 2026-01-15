

-- In your lazy.nvim / packer / whatever plugin spec
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
        file_ignore_patterns = {
          "^%.git/",          -- better regex style
          "node_modules/",
          "env/",
          "dist/",
          "build/",
          -- add more if needed
        },
      },
    })

    pcall(telescope.load_extension, "fzf")
  end,
}

-- ──────────────────────────────────────────────
-- Your normal <leader>ff mapping (respects ignores)
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end, { desc = "Find files (respects gitignore + custom ignores)" })

-- Nuclear / show-all-files mapping (ignores gitignore + lua patterns, but still excludes .git folder)
vim.keymap.set("n", "<leader>fF", function()
  require("telescope.builtin").find_files({
    prompt_title = "Find ALL files (except .git folder)",
    hidden = true,          -- show dotfiles (.gitignore, .env, etc.)
    no_ignore = true,       -- disable .gitignore / .ignore reading
    follow = true,          -- follow symlinks (optional but useful)

    -- Let ripgrep do the filtering → fast & overrides lua patterns
    find_command = {
      "rg",
      "--files",                    -- list files only (no content search)
      "--no-ignore",                -- ignore all ignore files
      "--hidden",                   -- include hidden files
      "--follow",                   -- follow symlinks
      "--glob", "!.git/**",         -- exclude everything under .git/
      "--glob", "!node_modules/**", -- exclude node_modules completely
      "--glob", "!env/**",
      "--glob", "!dist/**",
      "--glob", "!build/**",
      "--glob", "!.next/**",        -- Next.js specific build folder
      -- Add more --glob lines if needed (e.g. !.turbo/** for turborepo)
    },
  })
end, { desc = "Find almost everything (except .git / node_modules etc.)" })