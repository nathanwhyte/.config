return {
  'folke/trouble.nvim',
  dependencies = { 'folke/todo-comments.nvim' },
  cmd = 'Trouble',
  opts = {
    focus = true,
    keys = {
      ['<space>'] = 'fold_toggle',
      ['<tab>'] = 'fold_toggle',
    },
  },

  keys = {
    {
      '<leader>cx',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Diagnostics (Trouble)',
    },
    {
      '<leader>cX',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Buffer Diagnostics (Trouble)',
    },
    {
      '<leader>cn',
      '<cmd>Trouble diagnostics next<cr>',
      desc = 'Next error',
    },
    {
      '<leader>cN',
      '<cmd>Trouble diagnostics prev<cr>',
      desc = 'Previous error',
    },
    {
      '<leader>c]',
      '<cmd>Trouble diagnostics next<cr>',
      desc = 'Next error',
    },
    {
      '<leader>c[',
      '<cmd>Trouble diagnostics prev<cr>',
      desc = 'Previous error',
    },
    {
      '<leader>tT',
      '<cmd>Trouble todo<cr>',
      desc = 'View TODOs in Trouble',
    },
  },
}
