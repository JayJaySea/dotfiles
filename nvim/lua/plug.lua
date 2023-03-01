-- [[ plug.lua ]]

return require('packer').startup({function(use)
    -- [[ Plugin Manager ]]
    use 'wbthomason/packer.nvim'

    -- [[ Plugins ]]
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { 
            {'nvim-lua/plenary.nvim'}, 
            {'nvim-treesitter/nvim-treesitter'} 
        }
    }

    use 'elkowar/yuck.vim'
    use 'jiangmiao/auto-pairs'
    use 'sheerun/vim-polyglot'
    use '907th/vim-auto-save'
    use {'neoclide/coc.nvim', branch = 'release'}
    -- [[ Looks/Theme ]]
    use { 
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    use 'navarasu/onedark.nvim'
end,

config = {
  package_root = vim.fn.stdpath('config') .. '/site/pack'
}
})
