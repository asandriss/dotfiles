return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 700
  end,
  opts = {
    -- leave empty for default settings (mandatory do not delete)
  },
}
