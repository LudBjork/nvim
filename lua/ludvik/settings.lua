-- General short-hand that is used everywhere
opt = vim.opt

-- Numbers & Relative numbers
opt.nu = true
opt.relativenumber = true
opt.numberwidth = 10

-- Tab settings
opt.tabstop = 4
opt.wrap = false
opt.linebreak = true
opt.shiftwidth = 4 -- auto-set indentation
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
opt.updatetime = 10

-- prefer reading vertically
opt.textwidth = 80

-- cursor settings
opt.guicursor = "i:block-blinkwait10-blinkon10-blinkoff10"
