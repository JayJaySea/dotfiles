-- IMPORTS
require('vars')
require('plug')
require('keys')
require('opts')
require('comp')
require('lsp')

-- PLUGIN CONFIG
require('nvim-tree').setup{}
require('lualine').setup{
    options = {
        theme = 'onedark',
        icons_enabled = true,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000
        }
    },
    tabline  = {
        lualine_a = {{
                'tabs',
                max_length = vim.o.columns,
                mode = 1,
            }
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    },
    extensions = {"nvim-tree"}
}


local actions = require "telescope.actions"
require('telescope').setup {
    defaults = { file_ignore_patterns = { "node_modules", "build", "target" }}
}
require('onedark').setup {
    style = 'deep',
    transparent = false,
    term_colors = true,
    colors = {
		bg0 = "#071a35",
		bg_d = "#000b28",
		purple = "#d74cf0",
		blue = "#00a8ff",
    }
}
require('onedark').load()
