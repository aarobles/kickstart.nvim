return {
    "mfussenegger/nvim-dap",
    enabled = true,
    dependencies = {
        { "jay-babu/mason-nvim-dap.nvim", },
        { "rcarriga/nvim-dap-ui", },
        {
            "rcarriga/cmp-dap",
            dependencies = { "nvim-cmp" },
            config = function()
                require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
                    sources = {
                        { name = "dap" },
                    },
                })
            end,
        },
    },
    config = function ()
        vim.keymap.set('n', '<F5>',       require("dap").continue          , { desc = 'Debugger: Start' })
        vim.keymap.set('n', '<F10>',      require("dap").step_over         , { desc = 'Debugger: Step over' })
        vim.keymap.set('n', '<F12>',      require("dap").step_into         , { desc = 'Debugger: Step into' })
        vim.keymap.set('n', '<leader>dq', require("dap").close             , { desc = '[d]ap [q]uit (close)' })
        vim.keymap.set('n', '<leader>dQ', require("dap").terminate         , { desc = '[d]ap [Q]uit (terminate session)' })
        vim.keymap.set('n', '<leader>db', require("dap").toggle_breakpoint , { desc = '[d]ap toggle [b]reakpoint' })
        vim.keymap.set('n', '<leader>dB', require("dap").clear_breakpoints , { desc = '[d]ap clear all [B]reakpoints' })
        vim.keymap.set('n', '<leader>dC',
            function()
                vim.ui.input({ prompt = "Condition: " },
                    function(condition)
                        if condition then require("dap").set_breakpoint(condition) end
                    end)
            end,
            { desc = '[d]ap [C]onditional breakpoint' })
    end
}
