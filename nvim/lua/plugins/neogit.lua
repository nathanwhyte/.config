return {
  'NeogitOrg/neogit',
  lazy = true,
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim',
  },
  keys = {
    { '<leader>gg', '<cmd>Neogit<CR>', desc = 'Open Neogit' },
  },
  opts = {
    mappings = {
      popup = {
        ['F'] = 'PullPopup',
        ['p'] = 'PushPopup',
        ['P'] = 'PushPopup',
      },
    },
  },
}
