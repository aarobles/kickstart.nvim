return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require('toggleterm').setup {
            size = function(term)
                if term.direction == 'horizontal' then
                    return 15
                elseif term.direction == 'vertical' then
                    return vim.o.columns * 0.4
                end
            end,
            open_mapping = [[<F9>]],
            hide_numbers = true,
            autochdir = true,
            insert_mappings = true,
            persist_size = true,
            persist_mode = true,
            direction = 'float', -- 'vertical' | 'horizontal' | 'tab' 
            close_on_exit = true,
            shell = vim.o.shell,
            auto_scroll = true,
            float_opts = {
                border = 'single',
                width = function() return math.floor(vim.o.columns * 0.8) end,
                height = function() return math.floor(vim.o.lines * 0.8) end,
                winblend = 3,
                zindex = 4,
            },

        }
    end,
}
