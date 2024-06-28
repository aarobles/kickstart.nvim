-- Navigating splits
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Focus split right' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Focus split left' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Focus split up' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Focus split down' })

-- Move lines in normal mode
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Drag line down' })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Drag line up' })

-- Move lines in visual mode
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv ", { desc = 'Drag line down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv ", { desc = 'Drag line up' })

-- Vim shortcut keymaps
vim.keymap.set('v', '<leader>in', '<S-I>0<ESC>gvg<c-a>', { desc = '[i]nsert [n]umbered list' })
vim.keymap.set('v', '<leader>ec', 'xi{}<ESC><left>p', { desc = '[e]nclose in [c]urly braces { }' })
vim.keymap.set('v', '<leader>eb', 'xi[]<ESC><left>p', { desc = '[e]nclose in square [b]rackets [ ]' })
vim.keymap.set('v', '<leader>ep', 'xi()<ESC><left>p', { desc = '[e]nclose in [p]arentheses ( )' })
vim.keymap.set('n', '<C-b>', '<C-6>', { desc = 'Go to last [b]uffer' })
vim.keymap.set('n', '\\', ':sp<cr>', { desc = 'Horizontal Split' })
vim.keymap.set('n', '|', ':vs<cr>', { desc = 'Vertical Split' })
vim.keymap.set('i', '<C-c>', '{<CR>}<ESC>k$a<CR>', { desc = '[C-c]urly braces paragraph { }' })
vim.keymap.set('n', '<leader>ttf', ':ToggleTerm direction=float<CR>', { desc = '[t]oggle[t]erm [f]loat' })
vim.keymap.set('n', '<leader>ttt', ':ToggleTerm direction=tab<CR>', { desc = '[t]oggle[t]erm [t]ab' })
vim.keymap.set('n', '<leader>od', ':e %:p:h<CR>', { desc = '[o]pen [d]ir for current file' })

-- Telescope keymaps
-- vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>si', require('telescope.builtin').git_files, { desc = '[S]earch G[i]t files' })
-- vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
-- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
-- vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
-- vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sk', require('telescope.builtin').keymaps, { desc = '[S]earch [K]eymaps' })
-- vim.keymap.set('n', '<leader>ss', require('telescope.builtin').builtin, { desc = '[S]earch [S]elect Telescope' })
-- vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
-- vim.keymap.set('n', '<leader>s.', require('telescope.builtin').oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
-- vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>sc', require('telescope.builtin').commands, { desc = '[S]earch [C]ommands' })
vim.keymap.set('n', '<leader>st', require('telescope.builtin').tags, { desc = '[S]earch [T]ags' })
vim.keymap.set('n', '<leader>/', require('telescope.builtin').current_buffer_fuzzy_find, { desc = '[/] Fuzzily search in current buffer' })
-- vim.keymap.set('n', '<leader>s/', function()
--   builtin.live_grep {
--     grep_open_files = true,
--     prompt_title = 'Live Grep in Open Files',
--   }
-- end, { desc = '[S]earch [/] in Open Files' })
-- vim.keymap.set('n', '<leader>sn', function()
--   require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
-- end, { desc = '[S]earch [N]eovim files' })

-- Toggle show whitespace chars
vim.keymap.set('n', '<leader>tw', function()
  if vim.wo.list == true then
    vim.wo.list = false
  elseif vim.wo.list == false then
    vim.wo.list = true
  end
end, { desc = '[t]oggle show [w]hitespace' })

-- Toggle highlighting of searched terms
vim.keymap.set('n', '<leader>th', function()
  if vim.o.hlsearch == false then
    vim.o.hlsearch = true
  elseif vim.o.hlsearch == true then
    vim.o.hlsearch = false
  end
end, { desc = '[t]oggle show [h]ighlight search' })

-- Toggle relative line numbers
vim.keymap.set('n', '<leader>tn', function()
  if vim.wo.relativenumber == false then
    vim.wo.relativenumber = true
  elseif vim.wo.relativenumber == true then
    vim.wo.relativenumber = false
  end
end, { desc = '[t]oggle relative [n]umbering' })
