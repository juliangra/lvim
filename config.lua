-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Format on save
lvim.format_on_save = true

reload "custom.keymaps"
reload "custom.plugins"
reload "plugins.nvim-cmp"
reload "plugins.htop"
reload "plugins.telescope"
reload "plugins.nvimtree"
reload "plugins.barbar"
reload "plugins.flutter"

-- Activate loading screen
-- lvim.builtin.alpha.active = true

-- Set relative line numbers
vim.opt.relativenumber = true

-- Toggle nvim-tree on enter
vim.api.nvim_create_autocmd("vimenter", {
  callback = function()
    vim.defer_fn(function()
      vim.api.nvim_command("NvimTreeOpen")
    end, 1)
  end,
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "astro", "typescriptreact", "vue", "javascript", "javascriptreact" },
  }
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint_d",
    filetypes = { "typescript", "astro", "typescriptreact", "vue", "javascript", "javascriptreact" },
  }
}


-- Create a key mapping for 'gd' to call the goToDefinition function
-- vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua GoToDefinition()<CR>', { noremap = true, silent = true })

-- local function run_flutter_save()

--   vim.api.nvim_command(":FlutterReload")

-- end

-- vim.api.nvim_create_autocmd("BufWritePost", { callback = run_flutter_save() })


-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   {
--     command = "eslint",
--     filetypes = { "typescript", "typescriptreact", "vue", "javascript", "javascriptreact" },
--   }
-- }
