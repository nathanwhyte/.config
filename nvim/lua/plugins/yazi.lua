-- Yazi integration for nvim
--

return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  dependencies = {
    'folke/snacks.nvim',
  },

  keys = {
    {
      '<leader>o-',
      mode = { 'n', 'v' },
      '<cmd>Yazi<cr>',
      desc = 'Open yazi at the current file',
    },
    {
      '<leader>.',
      '<cmd>Yazi cwd<cr>',
      desc = "Open yazi in nvim's cwd",
    },
  },

  -- if you want to open yazi instead of netrw, see below for more info
  opts = {
    open_for_directories = false,
    keymaps = {
      show_help = '<f1>',
    },
  },

  init = function()
    vim.g.loaded_netrwPlugin = 1
  end,
}
