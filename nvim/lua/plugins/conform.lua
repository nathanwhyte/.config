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
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = 'n',
      desc = 'Format buffer',
    },
  },
  opts = {
    notify_on_error = false,
    -- format_on_save = function(bufnr)
    --   -- Disable "format_on_save lsp_fallback" for languages that don't
    --   -- have a well standardized coding style. You can add additional
    --   -- languages here or re-enable it for the disabled ones.
    --   local disable_filetypes = { c = true, cpp = true }
    --   if disable_filetypes[vim.bo[bufnr].filetype] then
    --     return nil
    --   else
    --     return {
    --       timeout_ms = 500,
    --       lsp_format = 'fallback',
    --     }
    --   end
    -- end,
    formatters_by_ft = {
      -- built-in file types
      lua = { 'stylua' },
      python = { 'ruff' },
      rust = { 'rustfmt', 'dioxus' },
      toml = { 'taplo' },
      json = { 'jq' },
      yaml = { 'yq' },
      javascript = { 'prettier', 'eslint' },
      javascriptreact = { 'prettier', 'eslint' },
      typescript = { 'prettier', 'eslint' },
      typescriptreact = { 'prettier', 'eslint' },
      markdown = { 'prettier' },
      astro = { 'prettier', 'eslint' },
      css = { 'prettier', 'eslint' },
      sh = { 'shfmt', 'shellcheck' },

      -- specific file types
      ["jsonc"] = { 'jq' },

      ['*'] = { 'codespell' },
      ['_'] = { 'trim_whitespace' },
    },
  },
}
