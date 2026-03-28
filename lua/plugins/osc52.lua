return {
  "ojroques/nvim-osc52",
  config = function()
    require("osc52").setup({
      max_length = 0,      -- 0 = no limit (you can set ~100000 if you want safety)
      silent = true,
      trim = false,
    })

    local osc52 = require("osc52")

    -- copy in visual mode
    vim.keymap.set("v", "<leader>y", function()
      osc52.copy_visual()
    end, { desc = "OSC52 copy visual" })

    -- copy current line
    vim.keymap.set("n", "<leader>yy", function()
      osc52.copy_register('"')
    end, { desc = "OSC52 copy line" })
  end,
}
