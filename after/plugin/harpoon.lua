local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)

-- I only set 5 because I consider focusing on more than that to be misuse of
-- harpoon
vim.keymap.set("n", "<leader>1", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>2", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>3", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>4", function()
	harpoon:list():select(4)
end)

vim.keymap.set("n", "<leader>5", function()
	harpoon:list():select(5)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
	harpoon:list():next()
end)

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
