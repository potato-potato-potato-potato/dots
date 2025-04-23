vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- bind jj to esc

vim.keymap.set('i', 'jj', '<ESC>', {slient = true})


-- fuzzy finder telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
-- change backgroun transparency
vim.keymap.set('n', '<leader>tp', function ()
	print("test")
	if  vim.g.sonokai_transparent_background ==0 then
		vim.g.sonokai_transparent_background = 1
	else
		vim.g.sonokai_transparent_background = 0
	end
end, {desc = "change background transparency"})

-- Terminal Integration keybinds
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set('n', '<leader>q', vim.cmd.ToggleTerm, {desc = "toggle to open terminal"})

-- system clipboard buffer keybinds
-- normal, visual mode text selection after to global clipboard buffer
vim.keymap.set({'n', 'v'},"<leader>y",'"+y', {desc = "copy into global clipboard buffer", nowait = true})
-- normal, visual mode for pasteing text in from global clipboard buffer
vim.keymap.set({'n', 'v'}, "<leader>pp",'"+p', { desc = "paste from global clipboard buffer", nowait = true})
-- select all text in open file and move to global clipboard buffer
vim.keymap.set('n', "<leader>ya",'gg"+yG', {desc = "copy file to global clipboard buffer"})

-- search pattern reset to none
vim.keymap.set({'n'}, '<leader>c',vim.cmd.noh,{desc = "clear search pattern"})

-- formatter stuff
-- format current file
vim.keymap.set({'n'}, '<leader>f', vim.cmd.Format, {desc = "format current file"})
-- format current file and write
vim.keymap.set({'n'}, '<leader>F', vim.cmd.FormatWrite, {desc = "format current file and write"})
