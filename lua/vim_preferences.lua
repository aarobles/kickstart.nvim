vim.o.hlsearch = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.wo.list = false
vim.o.guicursor = 'n-v-c:block,i-ci-ve:block-blinkwait175-blinkoff150-blinkon175,r-cr:hor20,o:hor50,a:block,sm:block'
vim.o.so = 0
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.hidden = true
vim.opt.listchars = { tab = '> ', space = '·', trail = '·' }
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr ()'
vim.opt.foldlevelstart = 99
vim.cmd 'set nofoldenable'
