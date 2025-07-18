return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 700
  end,
  opts = {
    -- leave empty for default settings (mandatory do not delete)
    defaults = {
      ["<leader>c"] = { name = "+Code" },
      ["<leader>d"] = { name = "+Diagnostics" },
      ["<leader>r"] = { name = "+Refactor" },
    },
  },
}
