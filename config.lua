-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
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
