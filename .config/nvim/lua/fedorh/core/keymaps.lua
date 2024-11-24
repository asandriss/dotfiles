vim.g.mapleader = " "   -- set space as leader key (default is backslash)

local km = vim.keymap

-- general
km.set("i", "jk", "<ESC>", {desc = "Exit insert mode with jk"}) 
km.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights"}) 

km.set("n", "<leader>+", "<C-a>")
km.set("n", "<leader>=", "<C-a>")
km.set("n", "<leader>-", "<C-x>")

-- windows and tabs management
km.set("n", "<leader>sv", "<C-w>v") -- split window vertically
km.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
km.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
km.set("n", "<leader>sx", ":close<CR>") -- close current split window

km.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
km.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
km.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
km.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- plugin related keybinding
km.set("n", "<leader>sm", ":MaximizerToggle<CR>")    -- use split maximizer
km.set("n", "<leader>e", ":NvimTreeToggle<CR>")     -- toggle file explorer

km.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
km.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
km.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
km.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

km.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
km.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
km.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
km.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
km.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

km.set("n", "<leader>t", "<cmd>FloatermToggle<cr>") -- toggle floating terminal window
km.set("t", "<leader>t", "<cmd>:FloatermToggle<CR>")


