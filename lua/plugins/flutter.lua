require("flutter-tools").setup {
  lsp = {
    color = {
      -- show the derived colours for dart variables
      enabled = true,
      background = true
    },
  },

  decorations = {
    statusline = {
      -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
      -- this will show the current version of the flutter app from the pubspec.yaml file
      app_version = true,
    }
  },
}
