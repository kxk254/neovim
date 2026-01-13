-- File: ~/.config/nvim/lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local on_attach = function(client, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    end

    -- TypeScript / JavaScript
    vim.lsp.config.ts_ls.setup({
      on_attach = on_attach,
    })

    -- Python
    vim.lsp.config.pyright.setup({
      on_attach = on_attach,
    })

    -- Lua (optional)
    vim.lsp.config.lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = { diagnostics = { globals = { "vim" } } },
      },
    })
  end,
}