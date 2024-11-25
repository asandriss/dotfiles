-- surround anything with usual characters such as ({""}) etc.
-- to surround current word with quotes do ysiw"
-- or ys$ to select till the end of line and then char to replace like )
--
-- to delete the surrounding elements do position anywhere inside and do ds-element (like ds{ to remove currly brace surround)
-- to replace surround, for example { go inside press cs { and then the char to replace with like (
return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = true,
}
