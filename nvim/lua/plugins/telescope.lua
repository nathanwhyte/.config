-- An all-in-one fuzzy finder
-- https://github.com/nvim-telescope/telescope.nvim

return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',

    'nvim-telescope/telescope-ui-select.nvim',

    'folke/todo-comments.nvim',

    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },

    {
      'nvim-telescope/telescope-fzf-native.nvim',

      build = 'make',

      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },

  config = function()
    require('telescope').setup {
      pickers = {
        find_files = {
          hidden = true,
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    local builtin = require 'telescope.builtin'

    -- searches
    vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search help/docs tags' })
    vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'Search keymaps' })
    vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = 'Select Telescope search' })
    vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'Search current word' })
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Grep search' })
    vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search diagnostics' })
    vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = 'Resume search' })
    vim.keymap.set('n', '<leader>sT', '<cmd>TodoTelescope<cr>', { desc = 'Search TODOs.' })

    -- files
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'search files' })
    vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Recent files' })
    vim.keymap.set('n', '<leader><space>', builtin.git_files, { desc = 'Project files' })
    vim.keymap.set('n', '<leader>,', builtin.buffers, { desc = 'Open buffers' })

    vim.keymap.set('n', '<leader>/', function()
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        previewer = false,
      })
    end, { desc = 'Fuzzy find in current buffer' })

    vim.keymap.set('n', '<leader>s/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = 'Grep search in open buffers' })

    vim.keymap.set('n', '<leader>fp', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = 'Search neovim files' })
  end,
}
