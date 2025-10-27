-- 1. Basic Editing
vim.g.do_filetype_lua = 1	   	-- Lua file type detection
vim.cmd('filetype plugin indent on')	-- Auto file type indentation
vim.opt.nrformats = ''		   	-- Treat all numerals as decimal
vim.opt.number = true              	-- Show line numbers
vim.opt.relativenumber = true      	-- Relative numbers for easier navigation
--vim.opt.autoindent = true 	   	-- Auto indent
--vim.opt.mouse = "a"                	-- Enable mouse
--vim.opt.cursorline = true           	-- Highlight current line
vim.opt.showmatch = true            	-- Show matching brackets


-- Map F9 to compile and run current C file
vim.keymap.set('n', '<F9>', ':w<CR>:!gcc % -o %< && ./%<<CR>', { noremap = true, silent = false })

