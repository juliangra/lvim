local linters = require "lvim.lsp.null-ls.linters"

linters.setup {
  {
    command = "eslint",
    filetypes = { "typescript", "astro", "typescriptreact", "vue", "javascript", "javascriptreact" },
  },
  {
    command = "protolint",
    filetypes = { "proto" },
  }
}
