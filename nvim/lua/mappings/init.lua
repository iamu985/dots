local map = vim.api.nvim_set_keymap
vim.g.mapleader = ' '
opts = { noremap = true, silent = true }


-- Maps to override defaults
map('n', "'", '$', opts)
map('n', ';', '0', opts)

-- Keymap to toggle NvimTree
map('n', '<leader>e', ':Fern .', opts) -- Current working direcory
map('n', '<leader>ep', ':Fern %:h', opts) -- Fern on parent directory
map('n', '<leader>ef', ':Fern . -reveal=%', opts) -- Fern Focused on current buffer 

-- G and gg mappings
map('n', '<leader>g<CR>', 'G', opts)
map('n', '<leader>gg<CR>', 'gg', opts)

-- Keymap to override Esc
map('i', 'jk', '<Esc>', opts)

-- Lua
-- Reload
map('n', '<leader>l', ':luafile %', opts)


-- Buffers
-- List Buffers
map('n', '<leader>b', ':ls<CR>', opts)
-- Next Buffer
map('n', '<leader>bn', ':next<CR>', opts)
-- Previous Buffer
map('n', '<leader>bp', ':prev<CR>', opts)
-- Close Buffer
map('n', '<leader>bc', ':bd<CR>', opts)
-- Close All Buffers
map('n', '<leader>ba', ':bw<CR>', opts)
-- Close All Buffers Except Current
map('n', '<leader>bx', ':bdelete %', opts)
-- Go to a buffer
map('n', '<leader>bw', ':buffer ', opts)
-- Vertical Split
map('n', '<leader>vs', ':vsplit %', opts)
-- Horizontal Split
map('n', '<leader>hs', ':split %', opts)
-- Close Window
map('n', '<leader>cw', ':bd<CR>', opts)

-- Tabs
-- New tab
map('n', '<leader>t', ':tabnew<CR>', opts)
-- Next Tab
map('n', '<leader>tn', ':tabnext<CR>', opts)
-- Previous Tab
map('n', '<leader>tp', ':tabprev<CR>', opts)
-- Close Tab
map('n', '<leader>tc', ':tabclose<CR>', opts)
-- Close All Tabs
map('n', '<leader>ta', ':tabclose!<CR>', opts)
-- Close All Tabs Except Current
map('n', '<leader>tx', ':tabclose %', opts)
-- Go to a tab
map('n', '<leader>tw', ':tabe ', opts)


-- Override write, quit and save commands
map('n', '<leader>w', ':w', opts)
map('n', '<leader>q', ':q', opts)
map('n', '<leader>wq', ':wq',  opts)
map('n', '<leader>qq', ':q!', opts)

-- Switch to a window
map('n', '<leader>s' , '<C-w>w', opts)

-- PackerSync
map('n', '<leader>ps', ':PackerSync<CR>', opts)

-- Checkhealth
map('n', '<leader>ch', ':checkhealth ', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files theme=dropdown<CR>', opts)
map('n',  '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n',   '<leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<leader><leader>', '<Esc><Esc>', opts)
map('i', '<leader><leader>', '<Esc><Esc>', opts)

-- Copy from other sources
map('n', '<leader>cr', '"+p', opts)
map('n', '<leader>vr', '"+y', opts)
map('n', '<C-c>', '"+y', opts)
map('i', '<C-o>', '<C-r>+', opts)
map('n', 'dl', 'Vyp', opts)

-- Nerd Tree
map('n', '<leader>nf', ':NERDTreeFocus', opts)
map('n', '<leader>n', ':NERDTreeToggle', opts)

-- Edit Config file keymap
map('n', '<leader>ec', ':edit ~/.config/nvim/init.lua', opts)
map('n', '<leader>ed', ':edit ', opts)

-- Macros
map('n', '<leader>mw', '@w', opts)
map('n', '<leader>ma', '@a', opts)
map('n', '<leader>ms', '@s', opts)

-- Hop Keybindings
map('n', '<leader>hw', ':HopWord', opts)
map('n', '<leader>ha', ':HopAnywhere',opts)
map('n', '<leader>hp', ':HopPattern',opts)
map('n', '<leader>hv', ':HopWordCurrentLine', opts)


-- Nerd Tree
map('n', '<leader>nf', ':NERDTreeFocus', opts)
map('n', '<leader>n', ':NERDTreeToggle', opts)

-- Edit Config file keymap
map('n', '<leader>ec', ':edit ~/.config/nvim/init.lua', opts)
map('n', '<leader>ed', ':edit ', opts)

-- Macros
map('n', '<leader>mw', '@w', opts)
map('n', '<leader>ma', '@a', opts)
map('n', '<leader>ms', '@s', opts)

-- which key
map('n', '<leader>', ":WhichKey ' '<CR>", { silent = true })
map('n', '<leader>a', ":cclose", opts)

-- vim.diagnostics
local bufopts = { noremap=true, silent=true, buffer=bufnr }
local keymap = vim.keymap.set
keymap('n', 'gd', vim.lsp.buf.definition, bufopts)
keymap('n', 'gD', vim.lsp.buf.declaration, bufopts)
keymap('n', 'gr', vim.lsp.buf.references, bufopts)
keymap('n', 'K', vim.lsp.buf.hover, bufopts)
keymap('n', 'gi', vim.lsp.buf.implementation, bufopts)
keymap('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
keymap('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
keymap('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)

keymap(
'n', 
'<leader>wl', 
function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, 
bufopts
)

keymap('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)

-- Terminal
-- Vertical split
map('n', '<leader>tt', ':terminal', opts)
map('n', '<leader>tv', ':vsplit | terminal<CR>', opts)
map('i', '<leader>tv', ':terminal<CR>', opts)
--  Horizontal split
map('n', '<leader>tvv', ':split | terminal<CR>', opts)
map('i', '<leader>tvv', ':terminal<CR>', opts)
keymap('t', '<Esc>', '<C-\\><C-N>', opts)

-- JABS
map('n', '<leader>jo', ':JABSOpen', opts)

-- mason_completion
map('n', '<leader>i', ':Mason', opts)


-- True Zen
local api = vim.api
api.nvim_set_keymap('n', '<leader>zn', ':TZNarrow<CR>', opts)
api.nvim_set_keymap('n', '<leader>zf', ':TZFocus<CR>', opts)
api.nvim_set_keymap('n', '<leader>zm', ':TZMinimalist<CR>', opts)
api.nvim_set_keymap('n', '<leader>za', ':TZAtaraxis<CR>', opts)

-- Neorg
api.nvim_set_keymap('n', '<leader>jm', ':Neorg inject-metadata', opts)






