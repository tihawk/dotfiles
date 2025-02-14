local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fs', builtin.find_files, {})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Ripgrep await for input to search for
vim.keymap.set('n', '<leader>ps', function()
  -- This requires the ripgrep binary to be installed
  -- builtin.grep_string({ search = vim.fn.input("Grep > ") }); moved to live grep
  builtin.live_grep()
end)

-- Ripgrep for <cword> (word under cursor)
vim.keymap.set('n', '<leader>pws', function()
  local word = vim.fn.expand("<cword>")
  builtin.grep_string({ search = word })
end)

-- Ripgrep for <cWORD> (sentence under cursor)
vim.keymap.set('n', '<leader>pWs', function()
  local word = vim.fn.expand("<cWORD>")
  builtin.grep_string({ search = word })
end)

vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
