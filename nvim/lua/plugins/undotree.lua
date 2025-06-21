return {
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<C-t>', '<cmd>UndotreeToggle<CR>', { desc = 'Toggle Undotree' })
    vim.g.undotree_SplitWidth = 45
  end,
}
