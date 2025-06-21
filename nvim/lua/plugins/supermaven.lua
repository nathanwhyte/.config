return {
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = '<Tab>',
        accept_word = '<right>',
      },
    }
  end,
}
