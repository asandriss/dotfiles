return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    
    -- run motions after 's' to paste over. for example sw would replace the current word
    -- s$ would remove everything till the end of the line and paste in the content
    vim.keymap.set("n", "s", substitute.operator, { desc = "Substitute with motion" })
    vim.keymap.set("n", "ss", substitute.line, { desc = "Substitute line" })
    -- uppercase S replaces till the end of the line, like s$ described above
    vim.keymap.set("n", "S", substitute.eol, { desc = "Substitute to end of line" })
    -- in visual mode just hit s to replace selection with clipboard
    vim.keymap.set("x", "s", substitute.visual, { desc = "Substitute in visual mode" })
  end,
}
