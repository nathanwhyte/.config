-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    default_component_configs = {
      indent = {
        indent_size = 2,
        padding = 0,
      },
      git_status = {
        symbols = {
          deleted = 'x', -- this can only be used in the git_status source
          renamed = '→', -- this can only be used in the git_status source
          -- Status type
          untracked = '?',
          ignored = '/',
          unstaged = '~',
          staged = '✓',
          conflict = '!',
        },
      },
    },
    window = {
      mappings = {
        ['<tab>'] = 'toggle_node',
      },
    },
    filesystem = {
      filtered_items = {
        visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
        hide_dotfiles = false,
        hide_gitignored = true,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
