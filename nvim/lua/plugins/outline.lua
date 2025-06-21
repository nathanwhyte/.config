return {
  'hedyhli/outline.nvim',
  lazy = true,
  cmd = { 'Outline', 'OutlineOpen' },
  keys = {
    { '<leader>cS', '<cmd>Outline<CR>', desc = 'Toggle outline' },
    { '<leader>co', '<cmd>Outline<CR>', desc = 'Toggle outline' },
  },
  opts = {},
}
