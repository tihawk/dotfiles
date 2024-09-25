vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- Map <C-c> to <Esc>, because LSP checks happen on escape, but not on ctrl-c
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Find and replace macro for word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
