return {
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")

			conform.setup({
			formatters_by_ft = {
				javascript     = { "prettier" },          -- or "biome", "prettierd"
				typescript     = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				html           = { "prettier" },
				json           = { "prettier" },
				css            = { "prettier" },
				-- Add more as needed (yaml, markdown, etc.)

				python         = { "isort", "black" },    -- or "ruff_format", "black"
														-- Order matters: isort first sorts imports
			},

			-- Auto-format on save (very common & recommended)
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,     -- If no formatter → try LSP formatting
				async = false,           -- sync is usually fine & feels instant
			},

			-- Optional: log/debug
			-- log_level = vim.log.levels.INFO,
			})

			-- Manual format keymap (very useful fallback)
			vim.keymap.set({ "n", "v" }, "cf", function()
			conform.format({ async = true, lsp_fallback = true })
			end, { desc = "Format buffer" })
		end,
	}