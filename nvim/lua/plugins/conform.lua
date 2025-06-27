-- Manage formatters
-- https://github.com/stevearc/conform.nvim

return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>cf',
      function()
        require('conform').format { async = true }
      end,
      mode = 'n',
      desc = 'Format buffer',
    },
  },

  opts = {
    log_level = vim.log.levels.DEBUG,

    notify_on_error = false,

    default_format_opts = {
      lsp_format = 'fallback',
    },

    formatters_by_ft = {
      -- interpreted
      sh = { 'shfmt', 'shellcheck' },
      lua = { 'stylua' },
      python = { 'ruff' },

      -- compiled
      rust = { 'rustfmt', 'dioxus' },

      -- markup
      markdown = { 'markdownfmt', 'cbfmt' },
      toml = { 'taplo' },
      json = { 'jq' },
      yaml = { 'yq' },

      -- web
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },
      typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      css = { 'stylelint', 'prettierd', 'prettier', stop_after_first = true },

      -- specific file types
      ['jsonc'] = { 'jq' },
      ['astro'] = { 'prettierd', 'prettier', stop_after_first = true },

      -- catch-alls
      ['*'] = { 'codespell' },
      ['_'] = { 'trim_whitespace' },
    },

    formatters = {
      shfmt = {
        command = 'shfmt',
        args = { '-i', '2' },
      },
    },
  },
}
