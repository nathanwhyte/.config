-- A nice backup colorscheme
-- https://github.com/folke/tokyonight.nvim

return {
  'folke/tokyonight.nvim',
  priority = 1000, -- load this before all the other start plugins
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('tokyonight').setup {
      styles = {
        comments = { italic = false }, -- Disable italics in comments
      },
    }
  end,
}
