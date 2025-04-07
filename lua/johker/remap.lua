vim.g.mapleader = " "
vim.keymap.set("n",  "<leader>pv", vim.cmd.Ex)

-- Move highlighted lines with capital jk
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in the middle when  ...
-- ...moving line below at the end of current line
vim.keymap.set("n", "J", "mzJ`z")
-- ..half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- ..searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Map German characters to brackets
-- Map ö to insert <> and place the cursor between the brackets
-- vim.api.nvim_set_keymap("i", "ö", "<><Esc>i", { noremap = true, silent = true })

-- Map ä to insert [] and place the cursor between the brackets
-- vim.api.nvim_set_keymap("i", "ä", "[]<Esc>i", { noremap = true, silent = true })

-- Map to insert () with an empty line in between and place the cursor on the empty line
vim.keymap.set("i", "ü", "{}<Esc>i<CR><Esc>O", { noremap = true, silent = true })

-- Map to insert () with an empty line between, and place the cursor on that line
vim.keymap.set("i", "ß", "()<Esc>i<CR><Esc>O", { noremap = true, silent = true })

-- u/tuerda
-- So what this does is that in insert mode you type "word" and hit control+s
-- and you will immediately have <word_></word> with the cursor at the _.
vim.keymap.set('i', 'ö', '<Esc>yiwi<lt><Esc>ea></><Esc>hpF>i', { noremap = true, silent = true })
-- Same idea but places the cursor between the tags.
vim.keymap.set('i', 'ä', '<Esc>yiwi<lt><Esc>ea></><Esc>hpF>a', { noremap = true, silent = true })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/theprimeagen/packer.lua<CR>")
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

