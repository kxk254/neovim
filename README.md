# neovim

:Lazy sync

:NvimTreeToggle

Plugin	How it loads
nvim-tree.lua	:NvimTreeToggle or opening nvim-tree manually
conform.nvim	On BufReadPre / BufNewFile (opens a file) -> triggers when you save a file, or cf to format manually
nvim-cmp	Automatically when you start typing in insert mode
mason.nvim / lspconfig	When you open a supported file type
telescope.nvim	When you call a Telescope command (:Telescope find_files)

sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim


install lazyvim

git clone https://github.com/folke/lazy.nvim ~/.local/share/nvim/site/pack/packer/start/lazy.nvim

