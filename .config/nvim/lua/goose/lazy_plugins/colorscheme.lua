return {
    {
        "briones-gabriel/darcula-solid.nvim",
        -- lazy = false,
        -- pritority = 1000,
        -- dependencies = "rktjmp/lush.nvim",
        -- config = function()
        --     vim.cmd 'colorscheme darcula-solid'
        --     vim.cmd 'set termguicolors'
        -- end,
    },
    { 'rose-pine/neovim', name = 'rose-pine'},
    { "catppuccin/nvim", name = "catppuccin"},
    {
        "folke/tokyonight.nvim",
        opts = { style = "night" },
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd 'colorscheme tokyonight-night'
        end
    }
}

