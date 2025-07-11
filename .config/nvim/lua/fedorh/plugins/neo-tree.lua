return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- already used
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      enable_git_status = true,
      enable_diagnostics = false,
      window = {
        width = 35,
        mappings = {
          ["<space>"] = "none", -- prevent accidental open
        },
        -- match relativenumber = true from old config
        relativenumber = true,
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          never_show = { ".DS_Store" },
        },
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.opt_local.relativenumber = true
            vim.opt_local.number = true -- optional: show absolute number on current line
          end,
        },
      },
    })

    -- These replicate your previous keymaps
    local keymap = vim.keymap.set
    keymap("n", "<leader>ee", "<cmd>Neotree toggle<cr>", { desc = "Toggle file explorer" })
    keymap("n", "<leader>ef", "<cmd>Neotree reveal<cr>", { desc = "Reveal current file" })
    keymap("n", "<leader>ec", "<cmd>Neotree collapse<cr>", { desc = "Collapse file explorer" })
    keymap("n", "<leader>er", "<cmd>Neotree refresh<cr>", { desc = "Refresh file explorer" }) -- optional
  end,
}
