-- More pretty colors! (and other useful features)
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    auto_install = true,
    ensure_installed = {
      'bash',
      'c',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'vim',
      'vimdoc',
      'rust',
      'toml',
      'python',
      'json',
    },

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },

    indent = { enable = true, disable = { 'ruby' } },
  },
}
