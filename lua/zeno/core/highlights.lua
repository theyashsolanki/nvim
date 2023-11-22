-- highlight yanked text
vim.cmd([[
  augroup YankHighlight
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup='Visual', timeout=200}
  augroup END
]])
vim.cmd([[
  hi NvimTreeNormal guibg=NONE
  hi NvimTreeNormalNC guibg=NONE
  hi NvimTreeNormalFl guibg=NONE
  hi NvimTreeWinSeparator guibg=NONE
  hi TelescopeNormal guibg=NONE
  hi TelescopeNormalFloat guibg=NONE
  hi TelescopeBorder guibg=NONE
  hi TelescopeSelection guibg=#002c38
  hi TelescopePreviewLine gui=NONE guibg=#2c3539
  hi TelescopeTitle gui=NONE guifg=#808080
  hi Visual gui=NONE guibg=#454545
  hi IncSearch guibg=#ff0000 guifg=#000000
  hi Search guibg=#ff0000 guifg=#FFA500
  
]])

vim.cmd([[highlight IndentBlanklineContextChar guifg=#9D7CD8 gui=nocombine]])

vim.opt.fillchars = { eob = " " }
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "#007ACC" })
-- vim.api.nvim_set_hl(0, "CmpSelection", { bg = "#005D8E", fg = "none" })
vim.api.nvim_set_hl(0, "CmpNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "CmpBorder", { bg = "none", fg = "#29a298" })
