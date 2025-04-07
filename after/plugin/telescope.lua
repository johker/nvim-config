local builtin = require('telescope.builtin')
-- Project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Git files 
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Project search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
