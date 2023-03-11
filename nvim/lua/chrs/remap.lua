vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pq", vim.cmd.Ex)


-- when selected, can move the whole block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- keep cursor on place
vim.keymap.set("n", "J", "mzJ`z")


-- halfe page jumping keeps curser in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


-- keep search terms in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- delete search
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- paste over and keeping former yank
vim.keymap.set("x", "<leader>p", [["_dP]])


-- deletes without yanking char
vim.keymap.set("n", "x", '"_x')


-- yanks to system clipboard by asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])


-- jep
vim.keymap.set("i", "<C-c>", "<Esc>")


-- prevent IT
vim.keymap.set("n", "Q", "<nop>")


-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

--vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
--vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
--vim.keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
--vim.keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab 


-- tmux switch project
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")


--
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)


-- quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- replace word
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
