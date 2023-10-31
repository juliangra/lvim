lvim.plugins = {
  -- Treesitter
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
  },
  -- Rust based code minimap
  {
    'wfxr/minimap.vim',
    cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
    config = function()
      vim.g.minimap_width = 10
      vim.g.minimap_auto_start = 1
      vim.g.minimap_auto_start_win_enter = 1
    end,
  },
  -- K9S
  { "hsalem7/nvim-k8s" },
  -- Autoclose HTML tags
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  -- GitHub copilot
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup({
          suggestion = {
            auto_trigger = true,
            keymap = {
              accept = "<Tab>"
            }
          }
        })
      end, 100)
    end,
  },
  -- Lazygit
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  -- Close buffers
  { "kazhala/close-buffers.nvim" },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  -- Telescope recent files
  { "smartpde/telescope-recent-files" },
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 1
      vim.g.gitblame_date_format = '%r'
      vim.g.gitblame_message_when_not_committed = ''
      vim.g.gitblame_delay = 1000
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  }
}
