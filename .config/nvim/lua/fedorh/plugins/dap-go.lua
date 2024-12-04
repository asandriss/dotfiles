return {
  "leoluz/nvim-dap-go",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  ft = "go",
  keys = {
    {
      "<leader>dgt",
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    {
      "<leader>dgf",
      function()
        local file = vim.fn.expand("%:p")
        require("dap").run({
          type = "go",
          name = "debug current file",
          request = "launch",
          program = file,
        })
      end,
      "Debug current go file",
    },
  },
  config = function()
    require("dap-go").setup()
  end,
}
