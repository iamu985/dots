require 'neoclip'.setup({
    history = 1000,
    enable_persistent_history = false,
    length_limit = 1048576,
    continuous_sync = false,
    preview = true,
    prompt = nil,
    default_register = '""',
    default_register_macros = 'q',
    enable_macros_history = true,
    on_paste = {
        set_reg = false,
    },
    keys = {
        telescope = {
            i = {
                select = '<CR>',
                paste = '<C-p>',
                paste_behind = '<c-k>',
                replay = '<c-q>',
                delete = '<c-d>',
                custom = {},
            },
            n = {
                select = '<cr>',
                paste = 'p',
                paste_behind = 'P',
                replay = 'q',
                delete = 'd',
                custom = {},
            },
        },
    }
})
