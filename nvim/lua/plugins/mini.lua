-- A collection of small plugins that do a lot
-- https://github.com/echasnovski/mini.nvim

return {
  'echasnovski/mini.nvim',
  config = function()
    -- better Around/Inside textobjects
    require('mini.ai').setup { n_lines = 500 }

    -- add/delete/replace surroundings (brackets, quotes, etc.)
    require('mini.surround').setup()

    -- session management
    require('mini.sessions').setup()

    -- remove trailing whitespace
    require('mini.trailspace').setup()

    -- better jumping between code blocks
    require('mini.bracketed').setup()

    -- better commenting
    require('mini.comment').setup()

    -- interactively align text
    require('mini.align').setup()

    -- icons
    require('mini.icons').setup()

    -- other smaller improvements
    require('mini.misc').setup()

    -- ... and more!
  end,
}
