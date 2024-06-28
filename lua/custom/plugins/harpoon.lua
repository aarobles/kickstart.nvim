return {
    'ThePrimeagen/harpoon',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function ()
        require('harpoon').setup {
            global_settings = {
                save_on_toggle = false,
                save_on_change = true,
                -- sets harpoon to run the command immediately
                -- as it's passed to the terminal when calling `sendCommand`.
                enter_on_sendcmd = false,
                tmux_autoclose_windows = false,
                excluded_filetypes = { "harpoon" },
                -- set marks specific to each git branch
                -- inside git repository
                mark_branch = false,
                -- enable tabline with harpoon marks
                tabline = false,
                tabline_prefix = "   ",
                tabline_suffix = "   ",
            },
        }
        vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file,            { desc = '[h]arpoon [a]dd file' })
        vim.keymap.set('n', '<leader>hm', require('harpoon.ui').toggle_quick_menu,     { desc = '[h]arpoon [m]enu' })
        vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev,              { desc = '[h]arpoon goto [p]rev mark' })
        vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next,              { desc = '[h]arpoon goto [n]ext mark' })
        vim.keymap.set('n', '<c-a>', function() require('harpoon.ui').nav_file(1) end, { desc = 'Harpoon goto [1]' })
        vim.keymap.set('n', '<c-o>', function() require('harpoon.ui').nav_file(2) end, { desc = 'Harpoon goto [2]' })
        vim.keymap.set('n', '<c-e>', function() require('harpoon.ui').nav_file(3) end, { desc = 'Harpoon goto [3]' })
        vim.keymap.set('n', '<c-s>', function() require('harpoon.ui').nav_file(4) end, { desc = 'Harpoon goto [4]' })
        vim.keymap.set('n', '<C-p>', require('harpoon.ui').nav_prev,                   { desc = 'harpoon buffer [p]rev' })
        vim.keymap.set('n', '<C-n>', require('harpoon.ui').nav_next,                   { desc = 'harpoon buffer [n]ext' })
        require('telescope').load_extension('harpoon')
    end,
}
