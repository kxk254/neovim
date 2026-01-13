-- File: ~/.config/nvim/lua/plugins/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",               -- Plugin name
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional icons
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
          },
        },
      },
    })
  end,
}