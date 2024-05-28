local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    command = "prettierd",
    filetypes = { "typescript", "astro", "typescriptreact", "vue", "javascript", "javascriptreact", "css", "yaml",
      "html", "scss", "json", "markdown" },
  },
  {
    command = "rustfmt",
    filetypes = { "rust" },
  }
}
