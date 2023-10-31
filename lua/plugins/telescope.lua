lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = require('telescope.actions').move_selection_previous
lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = require('telescope.actions').move_selection_next

-- Centerbox theme for telescope
lvim.builtin.telescope.theme = "center"

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "recent_files")
  pcall(telescope.load_extension, "flutter")
end

lvim.builtin.telescope.pickers.find_files = {
  find_command = {
    "rg",
    "--files",
    "--hidden",
    "--no-ignore",
    "-g",
    "!node_modules",
    "-g",
    "!.git",
    "-g",
    "!.nuxt/*",
    "-g",
    "!.next",
  },
}
