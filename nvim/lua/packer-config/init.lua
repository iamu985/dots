-- Packer Settings
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Themes
    use 'EdenEast/nightfox.nvim'
    use 'Mofiqul/dracula.nvim'
    use 'mhinz/vim-startify'
    use 'DanilaMihailov/beacon.nvim'

    -- Telescope
   use {
      'nvim-telescope/telescope.nvim',
       requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt  = true }
    }
   
   -- Fern
   use {
       'lambdalisue/fern.vim',
   }
   use {
       'antoinemadec/FixCursorHold.nvim',
   }

   -- Surround
   use {
       'jiangmiao/auto-pairs',
   }

    -- File Explorer
    use {
   'preservim/nerdtree',
    }
    use {
        'ryanoasis/vim-devicons'
    }

    -- Emmet 
    use {
        'mattn/emmet-vim',
    }

-- Hop
   use {
   'phaazon/hop.nvim',
   branch = 'v2', -- optional but strongly recommended
   config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
   end
}

-- Indentation Line
    use 'lukas-reineke/indent-blankline.nvim'

-- LSP plugin
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'

-- Which Key
    use 'liuchengxu/vim-which-key'

-- nui
    use 'MunifTanjim/nui.nvim'
    
-- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
-- JABS (Just Anoter Buffer Switcher)
    use 'matbme/JABS.nvim'
-- Neoclip
    use "AckslD/nvim-neoclip.lua"

-- Mason
    use { "williamboman/mason.nvim" }
    use "williamboman/mason-lspconfig.nvim"

-- Neorg
    use {
        "nvim-neorg/neorg",
        run = ":Neorg sync-parsers"
}
-- True Zen
    use "Pocco81/true-zen.nvim"
end)

