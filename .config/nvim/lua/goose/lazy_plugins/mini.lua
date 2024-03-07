return {
    {
        "echasnovski/mini.nvim",
        lazy = false,
        version = '*',
        config = function()
            require('mini.pairs').setup({})
            require('mini.surround').setup({})
            require('mini.operators').setup({})
            require('mini.jump2d').setup({})
            require('mini.comment').setup({})

            vim.cmd('autocmd FileType svelte setlocal commentstring=<!--%s-->')
            -- vim.api.nvim_create_autocmd("FileType", {
                --     group = vim.api.nvim_create_augroup("FixSveletCommentString", { clear = true }),
                --     callback = function(ev)
                    --         vim.bo[ev.buf].commentstring = "# %s"
                    --     end,
                    --     pattern = { "svelte" },
                    -- })
                end
            },
            -- {'JoosepAlviste/nvim-ts-context-commentstring'}
            -- {
                --     'tpope/vim-commentary',
                --     lazy = false
                -- }
            }
