require("core.options")
local colorscheme = require("core.colorscheme")
require("plugins.lazy.setup")
require("core.keymaps")

vim.cmd("colorscheme " .. colorscheme.theme)
