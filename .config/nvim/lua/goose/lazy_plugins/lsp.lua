return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = false,
        dependencies = {
            {
                'neovim/nvim-lspconfig',
                dependencies = {
                    {'hrsh7th/cmp-nvim-lsp'},
                }
            },
            -- Autocompletion
            {
                'hrsh7th/nvim-cmp',
                dependencies = {
                    {'L3MON4D3/LuaSnip'}
                },
            },
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'udalov/kotlin-vim'
        },
        config = function()
            local lsp_zero = require('lsp-zero')

            lsp_zero.on_attach(function(_, bufnr)
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp_zero.default_keymaps({buffer = bufnr})
            end)

            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {'gradle_ls', 'kotlin_language_server'},
                handlers = {
                    lsp_zero.default_setup,
                },
            })
        end
    },

}
