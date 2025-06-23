-- adds a vscode-like bufferline
-- https://github.com/akinsho/bufferline.nvim

return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
          local icon = level:match 'error' and ' ' or ' '
          return ' ' .. icon .. count
        end,
      },
    }

    vim.keymap.set('n', '<leader>bp', '<cmd>BufferLinePick<CR>', { desc = 'Pick an active buffer' })
    vim.keymap.set('n', 'BP', '<cmd>BufferLinePick<CR>', { desc = 'Pick an active buffer' })
  end,
}
