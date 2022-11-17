
vim.g.dashboard_default_executive = 'telecope'

-- Custom section
vim.g.dashboard_custom_section = {
    a = {description = {'Find Files     '}, command = ':Telescope find_files'},
    d = {description = {'Search Text    '}, command = ':Telescope live_grep'},
    b = {description = {'Recent Files   '}, command = ':Telescope oldfiles'},
    e = {description = {'Config         '}, command = ':edit ~/.config/nvim/init.lua'},
}

vim.g.dashboard_custom_footer = {'Carpe Dium! Seize the day!'}

vim.g.dashboard_custom_header = {'Welcome  to your dashboard! Master Frankenstien!'}
