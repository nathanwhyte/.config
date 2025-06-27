-- Highlight todo, notes, and more in comment blocks
-- https://github.com/folke/todo-comments.nvim

return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = true,
    keywords = {
      FIX = {
        icon = ' ', -- icon used for the sign and in search results
        color = 'error', -- can be a hex color, or a named color (see below)
        alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' }, -- a set of other keywords that all map to this FIX keywords
      },
      TODO = { icon = '󰅪 ', color = 'warning' },
      IDEA = { icon = ' ', color = 'str' },
      PERF = { icon = '󰾆 ', alt = { 'PERFORMANCE', 'OPTIMIZE' } },
      NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
      TEST = { icon = '󰙨 ', alt = { 'TESTING', 'PASSED', 'FAILED' } },
      FEATURE = { icon = ' ', color = 'fn', alt = { 'FEAT' } },
      QUESTION = { icon = '? ', color = 'const', alt = { 'QUES' } },
    },

    highlight = {
      keyword = 'bg',
    },

    colors = {
      char = { 'Character', '#FF80BF' },
      fn = { 'Function', '#8AFF80' },
      const = { 'Constant', '#9580FF' },
      str = { '#FFFF99' },
    },
  },
}
