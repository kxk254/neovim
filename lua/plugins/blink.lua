return {
  'saghen/blink.cmp',
  version = '*', -- Use a specific version tag, e.g., '1.*' or '*' for the latest release
  dependencies = {
    -- optional: provides snippets for the snippet source
    'rafamadriz/friendly-snippets',
    -- optional: if using nvim-cmp sources
    'saghen/blink.compat',
  },
  opts = {
    -- Your configuration options go here
    -- blink.cmp will automatically call setup({}) with these options
    keymap = {
      preset = "default", -- Uses default keymaps (e.g., Ctrl+y to accept)
    },
    completion = {
      documentation = {
        auto_show = true, -- Automatically show documentation
      },
    },
    -- ... more options
  },
  -- If you prefer to build from source (requires a Rust toolchain)
  -- build = 'cargo build --release',
}

