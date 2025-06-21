-- paste without overwriting current yank register
vim.keymap.set({ 'n', 'x' }, '<leader>p', '"_dP', { desc = 'Paste leader overwriting' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- windows
vim.keymap.set('n', '<leader>wh', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<leader>wH', '<C-w>H', { desc = 'Move window all the way to the left' })
vim.keymap.set('n', '<leader>wl', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<leader>wL', '<C-w>L', { desc = 'Move window all the way to the right' })
vim.keymap.set('n', '<leader>wj', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<leader>wk', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>wv', '<C-w><C-v>', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>wV', '<C-w><C-V>', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>ws', '<C-w><C-s>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>ws', '<C-w><C-s>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>wd', '<C-w><C-q>', { desc = 'Delete window' })
vim.keymap.set('n', '<leader>ww', '<C-w><C-w>', { desc = 'Next window' })
vim.keymap.set('n', '<leader>wo', '<C-w><C-w>', { desc = 'Next window' })
vim.keymap.set('n', '<leader>wF', '<C-w>|', { desc = 'Maximize window horizontally' })
vim.keymap.set('n', '<leader>w|', '<C-w>_', { desc = 'Maximize window vertically' })
vim.keymap.set('n', '<leader>w=', '<C-w>=', { desc = 'Equalize window sizes' })

-- diagnostics
vim.keymap.set('n', ']e', function()
  vim.diagnostic.jump { count = 1 }
end, { desc = 'Jump to next diagnostic' })

vim.keymap.set('n', '[e', function()
  vim.diagnostic.jump { count = -1 }
end, { desc = 'Jump to next diagnostic' })

vim.keymap.set('n', '<leader>cq', vim.diagnostic.setloclist, { desc = 'Diagnostic quickfix list' })
