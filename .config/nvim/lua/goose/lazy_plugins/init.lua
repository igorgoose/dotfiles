return {
    'ThePrimeagen/vim-be-good',
    {'lambdalisue/suda.vim',
    config = function ()
        vim.cmd [[
        let g:suda#nopass = 1
        ]]
    end
}
}
