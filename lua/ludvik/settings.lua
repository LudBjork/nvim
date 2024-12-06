-- General short-hand that is used everywhere
opt = vim.opt

-- Numbers & Relative numbers
opt.nu = true
opt.relativenumber = true
opt.numberwidth = 10 -- I'm legally blind when it comes to current line

-- Tab settings
-- Used when LSP unavailable
opt.tabstop = 4
opt.shiftwidth = 4
opt.wrap = false
opt.expandtab = false -- use tabs as tabs, not spaces as tabs
opt.smartindent = true

-- Searching settings
opt.hlsearch = false -- don't highlight everywhere
opt.incsearch = true -- show match as you type
opt.ignorecase = true
opt.smartcase = true -- case-sensitive search only when search-string is using upper-case

-- Scroll offset
opt.scrolloff = 12

--  termguicolors makes the colors more vibrant
opt.termguicolors = true

opt.isfname:append("@-@")
opt.updatetime = 10 -- default is 4 seconds

-- prefer reading code vertically
opt.textwidth = 80
opt.colorcolumn = "80" -- hint that you're reaching textwidth
