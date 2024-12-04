vim.g.mapleader = " " -- set space as leader key (default is backslash)

local km = vim.keymap

-- The {desc = } part is used by plugin "Which key" to show help with keybindings!

-- general
km.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

km.set("n", "<leader>+", "<C-x>", { desc = "Increment number under cursor" })
km.set("n", "<leader>-", "<C-a>", { desc = "Decrement number under cursor" })
km.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll half page down" })
km.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll half page up" })

-- windows and tabs management
km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
km.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal size" }) -- make split windows equal width & height
km.set("n", "<leader>sx", ":close<CR>", { desc = "Close current window split" }) -- close current split window

km.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
km.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
km.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
km.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

km.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
km.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
km.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
km.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
km.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
