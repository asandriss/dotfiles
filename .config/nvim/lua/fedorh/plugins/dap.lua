return {
  "mfussenegger/nvim-dap",

  keys = {
    { "<leader>db", "<cmd>DapToggleBreakpoint <CR>", desc = "Toggle breakpoint at line" },
    {
      "<leader>ds",
      function()
        local widgets = require("dap.ui.widgets")
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      desc = "Open debugging sidebar",
    },
  },
}
