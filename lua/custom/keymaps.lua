-- Goto buffer number
lvim.builtin.which_key.mappings["1"] = { "<cmd>lua require('bufferline').go_to_buffer(1, true)<cr>", "Go to buffer 1" }
lvim.builtin.which_key.mappings["2"] = { "<cmd>lua require('bufferline').go_to_buffer(2, true)<cr>", "Go to buffer 2" }
lvim.builtin.which_key.mappings["3"] = { "<cmd>lua require('bufferline').go_to_buffer(3, true)<cr>", "Go to buffer 3" }
lvim.builtin.which_key.mappings["4"] = { "<cmd>lua require('bufferline').go_to_buffer(4, true)<cr>", "Go to buffer 4" }
lvim.builtin.which_key.mappings["5"] = { "<cmd>lua require('bufferline').go_to_buffer(5, true)<cr>", "Go to buffer 5" }
lvim.builtin.which_key.mappings["6"] = { "<cmd>lua require('bufferline').go_to_buffer(6, true)<cr>", "Go to buffer 6" }
lvim.builtin.which_key.mappings["7"] = { "<cmd>lua require('bufferline').go_to_buffer(7, true)<cr>", "Go to buffer 7" }
lvim.builtin.which_key.mappings["8"] = { "<cmd>lua require('bufferline').go_to_buffer(8, true)<cr>", "Go to buffer 8" }
lvim.builtin.which_key.mappings["9"] = { "<cmd>lua require('bufferline').go_to_buffer(9, true)<cr>", "Go to buffer 9" }



-- Unset <tab> and <S-tab> mappings
lvim.builtin.cmp.mapping["<tab>"] = nil
lvim.builtin.cmp.mapping["<S-tab>"] = nil

-- Window split keymaps
lvim.keys.normal_mode["<leader>sv"] = "<C-w>v"


lvim.keys.normal_mode["<leader>se"] = "<C-w>="
lvim.keys.normal_mode["<leader>sx"] = ":close<CR>"

-- Remove old <leader>sh mapping and replace with split below
lvim.builtin.which_key.mappings.s.h = {}
lvim.keys.normal_mode["<leader>sh"] = "<C-w>s"

-- Toggle GitBlame
lvim.builtin.which_key.mappings.g.b = {}
lvim.keys.normal_mode["<leader>gb"] = "<cmd>:GitBlameToggle<cr>"

-- Open current commit from GitBlame
lvim.keys.normal_mode["<leader>oc"] = "<cmd>:GitBlameOpenCommitURL<cr>"

-- Remove old <leader>gg mapping and replace with LazyGit
lvim.builtin.which_key.mappings.g.g = {}
lvim.keys.normal_mode["<leader>gg"] = "<cmd>:LazyGit <cr>"


lvim.builtin.which_key.mappings.d.d = {}
lvim.keys.normal_mode["<leader>dd"] = "<cmd>:TroubleToggle <cr>"

lvim.keys.normal_mode["<leader>rn"] = "<cmd>lua vim.lsp.buf.rename()<cr>"
lvim.keys.normal_mode["<leader>to"] = ":tabnew<CR>"

-- Restart LSP
lvim.keys.normal_mode["<leader>rl"] = ":LspRestart<cr>"

lvim.keys.normal_mode["<leader>ro"] = ":FlutterReload<cr>"

-- Remove default mapping for <leader>q and replace with close_buffers
lvim.builtin.which_key.mappings["q"] = {}
lvim.keys.normal_mode["<leader>q"] = "<CMD>lua require('close_buffers').delete({type = 'this'})<CR>"
lvim.keys.normal_mode["<leader>tx"] = "<CMD>lua require('close_buffers').delete({type = 'this'})<CR>"

-- Toggle minimap
lvim.keys.normal_mode["<leader>mm"] = "<cmd>MinimapToggle<CR>"

-- Remove default mapping for <leader>f and replace with Telescope find_files
lvim.builtin.which_key.mappings.f = {}


lvim.keys.normal_mode["<leader>ff"] = "<cmd>Telescope find_files<CR>"
lvim.keys.normal_mode["<leader><leader>"] = "<cmd>lua require('telescope').extensions.recent_files.pick()<CR>"
lvim.keys.normal_mode["<leader>fo"] = "<cmd>lua require('telescope').extensions.flutter.commands()<CR>"
lvim.keys.normal_mode["<leader>fr"] = "<cmd>Telescope git_files<CR>"
lvim.keys.normal_mode["<leader>fg"] = "<cmd>Telescope live_grep<CR>"
lvim.keys.normal_mode["<leader>ft"] = "<cmd>NvimTreeFindFile<CR>"

-- No highlight keymap
lvim.keys.normal_mode["<leader>nh"] = ":nohl<CR>"

-- Do not copy to register on deletion
lvim.keys.normal_mode["x"] = '"_x'

-- Add JsDoc
lvim.keys.normal_mode["<leader>md"] = { "<cmd>lua require('neogen').generate()<CR>" }


-- Switch nvimtree sidebar side to right
lvim.builtin.nvimtree.setup.view.side = "right"


-- function customNuxtSkipComponents()
--   -- Add your custom logic here
--   -- This function will be called when you run :NuxtSkipComponents
--   vim.lsp.buf.definition()
--   print("Custom Go To Definition command executed")
-- end


function nuxtSkipComponentsFile()
  local util = require 'vim.lsp.util'
  local params = util.make_position_params()
  vim.lsp.buf.definition()

  vim.lsp.buf_request(0, 'textDocument/definition', params, function()
    local new_file = vim.fn.expand('%:t')
    if new_file == 'components.d.ts' then
      vim.cmd('normal f.gf') -- For example, open a split window with a specific file
    end
  end)
end

vim.cmd [[
  command! NuxtSkipComponents lua nuxtSkipComponentsFile()
]]

lvim.lsp.buffer_mappings.normal_mode["gd"] = { "<cmd>NuxtSkipComponents<CR>" }

-- lvim.builtin.cmp.mapping["<tab>"] = nil
-- vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua NuxtSkipComponents()<CR>', { noremap = true, silent = true })


-- Terminal

lvim.keys.normal_mode["œ"] = "<cmd>ToggleTerm<cr>"
-- v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
-- h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
