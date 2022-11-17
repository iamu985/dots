local settings = {
    ui = {
        border = "none",
    },
    max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
    automatic_installation = true,

})
