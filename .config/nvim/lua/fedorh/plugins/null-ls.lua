return {
  "jose-elias-alvarez/null-ls.nvim",
  dependencies = {
    "nnvim-lua/plenary.nvim",
  },
  -- ft = "go",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.gofumjjt,
        null_ls.builtins.formatting.goimports_reviser,
      },
    })
    -- sources = {
    --   null_ls.builtins.formatting.gofumjjt,
    -- },
  end,
}
