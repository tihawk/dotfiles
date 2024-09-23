local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fs', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	-- This requires the ripgrep binary to be installed
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
