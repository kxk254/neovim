return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local on_attach = function(_, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    end

    -- TypeScript / JavaScript
    vim.lsp.config("ts_ls", {
      on_attach = on_attach,
      -- init_options = { ... } if needed
      settings = {
	      typescript = {
		      inlayHints = {
			      includeInlayParameterNameHints = "all",
			      includeInlayParameterNameHintsWhenArgumentMatchesName = false,
			      includeInlayFunctionParameterTypeHints = true,
			      includeInlayVariableTypeHints = true,
			      includeInlayVariableTypeHintsWhenTypeMatchesName = false,
			      includeInlayPropertyDeclarationTypeHints = true,
			      includeInlayFunctionLikeReturnTypeHints = true,
			      includeInlayEnumMemberValueHints = true,
		      },
	      },
	      javascript = {
		      inlayHints = {
			     includeInlayParameterNameHints = "all",
			      includeInlayParameterNameHintsWhenArgumentMatchesName = false,
			      includeInlayFunctionParameterTypeHints = true,
			      includeInlayVariableTypeHints = true,
			      includeInlayVariableTypeHintsWhenTypeMatchesName = false,
			      includeInlayPropertyDeclarationTypeHints = true,
			      includeInlayFunctionLikeReturnTypeHints = true,
			      includeInlayEnumMemberValueHints = true,

		      },
	      },
      },
    })

    -- Python
    vim.lsp.config("pyright", {
      on_attach = on_attach,
    })

    -- Lua
    vim.lsp.config("lua_ls", {
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
  end,
}
