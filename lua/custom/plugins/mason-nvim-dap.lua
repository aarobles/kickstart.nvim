return {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = { "nvim-dap" },
    cmd = { "DapInstall", "DapUninstall" },
    opts = function(_, opts)
        opts.ensure_installed = {
            "cppdbg",
        }

        opts.handlers = {
            -- Handler for given adapter (in this case, adapter is cppdbg)
            cppdbg = function(_)
                local dap = require 'dap'
                -- Resupply adapter
                dap.adapters.cppdbg = {
                    id = 'cppdbg',
                    type = 'executable',
                    command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
                }

                -- Overriding default configuration for cpp filetype (maps to a given adapter in filetypes.lua)
                dap.configurations.cpp = {
                    -- Requires a list of configurations, so using default from configurations.lua with some mods
                    {
                        name = 'Launch file with args',
                        type = 'cppdbg',
                        request = 'launch',
                        program = function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end,
                        args = function()
                            local args = vim.fn.input 'Enter command line arguments (separated by spaces): '
                            return vim.split(args, ' ')
                        end,
                        cwd = '${workspaceFolder}',
                        stopAtEntry = true,
                    },
                    {
                        name = 'Launch file',
                        type = 'cppdbg',
                        request = 'launch',
                        program = function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end,
                        cwd = '${workspaceFolder}',
                        stopAtEntry = true,
                    },
                    {
                        name = 'Attach to gdbserver :9898',
                        type = 'cppdbg',
                        request = 'launch',
                        MIMode = 'gdb',
                        miDebuggerServerAddress = 'localhost:9898',
                        miDebuggerPath = vim.fn.exepath('gdb'),
                        cwd = '${workspaceFolder}',
                        program = function()
                            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                        end,
                    },
                }
                dap.configurations.c = {
                    -- Requires a list of configurations, so using default from configurations.lua with some mods
                    {
                        name = 'Launch file with args',
                        type = 'cppdbg',
                        request = 'launch',
                        program = function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end,
                        args = function()
                            local args = vim.fn.input 'Enter command line arguments (separated by spaces): '
                            return vim.split(args, ' ')
                        end,
                        cwd = '${workspaceFolder}',
                        stopAtEntry = true,
                    },
                    {
                        name = 'Launch file',
                        type = 'cppdbg',
                        request = 'launch',
                        program = function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end,
                        cwd = '${workspaceFolder}',
                        stopAtEntry = true,
                    },
                    {
                        name = 'Attach to gdbserver :9898',
                        type = 'cppdbg',
                        request = 'launch',
                        MIMode = 'gdb',
                        miDebuggerServerAddress = 'localhost:9898',
                        miDebuggerPath = vim.fn.exepath('gdb'),
                        cwd = '${workspaceFolder}',
                        program = function()
                            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                        end,
                    },
                }
            end,
        }
    end,
}
