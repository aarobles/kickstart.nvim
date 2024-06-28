return {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    build = ':TSUpdate',
    config = function ()
        require('treesitter-context').setup {
            enable = true,
            throttle = true,
            max_lines = 0,
            patterns = {
                default = { 'class' , 'function' , 'method' }, -- 'for', 'while', 'if', 'switch', 'case', 
            },
            exact_patterns = { -- Example for a specific filetype with Lua patterns
                -- rust = true,
            }
        }
    end,
}
