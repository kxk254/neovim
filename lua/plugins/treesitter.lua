return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local ok, ts_configs = pcall(require, "nvim-treesitter.configs")
    if not ok then
      return
    end

    ts_configs.setup({
      ensure_installed = { "lua", "javascript", "typescript", "python" },
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
    })
  end,
}