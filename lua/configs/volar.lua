-- To support Volar 2.0 where takeover mode has been disabled, Volar is only responsible for HTML and CSS.
-- To also allow for JS/TS support, we need to add the following to the nvim-lspconfig setup for Volar that
-- references the vue-language-server plugin from Mason. This adds support for JS/TS in Vue files.
-- Source: https://github.com/vuejs/language-tools/pull/4134/files/a44f3b2ee635de5f4f242d3d6a1dfa3718f375d4
--
-- (This was committed 42 minutes ago, this will probably be fixed in the future)
local vue_language_server_path = '~/.local/share/lvim/mason/packages/vue-language-server'

local lspconfig = require('lspconfig')

lspconfig.tsserver.setup {
  init_options = {
    plugins = {
      {
        name = '@vue/typescript-plugin',
        location = vue_language_server_path,
        languages = { 'vue' },
      },
    },
  },
}

-- Setup Volar with the hybrid mode disabled (Requires @vue/language-server version ^2.0.7)
-- This allows Volar to run embedded `tsserver` meaning we don't need to run `tsserver` as a
-- separate LSP server in Vue files.
lspconfig.volar.setup {
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
}
