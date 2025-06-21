return {
  dir = '/Users/natew/.config/nvim/themes/dracula_pro/',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme 'dracula_pro_van_helsing'
  end,
}
