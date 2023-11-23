local dap = require("dap")
local debugpy = require("zeno.plugins.dap.python")
local node = require("zeno.plugins.dap.typescript")
local lldb = require("zeno.plugins.dap.cpp")

-- c / c++
dap.configurations.cpp = lldb
dap.configurations.c = lldb
dap.configurations.rust = lldb

-- python
dap.configurations.python = debugpy

-- typescript / javascript
dap.configurations.typescript = node
dap.configurations.javascript = node
