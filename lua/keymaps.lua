vim.keymap.set("n", "tn", function()
  if vim.o.relativenumber then
    vim.o.relativenumber = false
    vim.o.number = true
  else
    vim.o.relativenumber = true
    vim.o.number = true
  end
end, { desc = "Toggle line numbers" })