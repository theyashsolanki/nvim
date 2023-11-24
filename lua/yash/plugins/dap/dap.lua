return {
	"rcarriga/nvim-dap-ui",
	event = "VeryLazy",
	dependencies = {
		{
			"mfussenegger/nvim-dap",
			config = function()
				local dap = require("dap")
				local debugpy = require("yash.plugins.dap.config.python")
				local node = require("yash.plugins.dap.config.typescript")
				local lldb = require("yash.plugins.dap.config.cpp")

				-- c / c++
				dap.configurations.cpp = lldb
				dap.configurations.c = lldb
				dap.configurations.rust = lldb

				-- python
				dap.configurations.python = debugpy

				-- typescript / javascript
				dap.configurations.typescript = node
				dap.configurations.javascript = node
			end,
		},
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dapui.setup()
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end
	end,
}