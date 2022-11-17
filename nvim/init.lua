require('settings.settings')
require('packer-config')
require('mappings')
require('colorscheme.dracula')
require('lsp')
require('nvclip')
require('msn')
require('org')
require('zenmode')

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.sumneko_lua.setup{}
require'lspconfig'.tsserver.setup{}
-- JABS
require 'jabs'.setup {}

-- nvim-treesitter
require("nvim-treesitter.configs").setup({
  ensure_installed = { "markdown", "markdown_inline", ... },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { "markdown" },
  },
})


vim.api.nvim_create_autocmd(
    {"BufRead", "BufNewFile"},
    {
        command = "setlocal spell spelllang=en_us",
    }
)






