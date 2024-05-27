local harpoon = require("harpoon")
local extensions = require("harpoon.extensions")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)

-- use <leader><index> to reach buffer
harpoon:extend(extensions.builtins.navigate_with_number())

-- use telescope as GUI for Harpoon
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

vim.keymap.set("n", "<C-e>", function()
	toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })

vim.keymap.set("n", "<leader>dl", function()
	table.remove(harpoon:list().items)
end, { desc = "Pop last added file" })
vim.keymap.set("n", "<leader>d1", function()
	table.remove(harpoon:list().items, 1)
end, { desc = "Pop specfic file" })
vim.keymap.set("n", "<leader>d2", function()
	table.remove(harpoon:list().items, 2)
end, { desc = "Pop specfic file" })
vim.keymap.set("n", "<leader>d3", function()
	table.remove(harpoon:list().items, 3)
end, { desc = "Pop specfic file" })
vim.keymap.set("n", "<leader>d4", function()
	table.remove(harpoon:list().items, 4)
end, { desc = "Pop specfic file" }) -- Might delete this because <leader>dl does the same
vim.keymap.set("n", "<leader>d5", function()
	table.remove(harpoon:list().items, 5)
end, { desc = "Pop specfic file" }) -- Might delete this because <leader>dl does the same

local function remove_all()
	local t = harpoon:list().items
	local count = #t
	for i = 0, count do
		t[i] = nil
	end
end

vim.keymap.set("n", "<leader>d<BS>", function()
	remove_all()
end, { desc = "Remove all" })
