local M = {}

M.theme = "onedark"
M.transparent = true
M.style = ""
if M.transparent then
	M.floats = "transparent"
	M.sidebars = "transparent"
else
	M.floats = ""
	M.sidebars = ""
end

return M
