local dap = require("dap")

dap.adapters.coreclr = {
  type = "executable",
  command = "/usr/local/netcoredbg",
  args = { "--interpreter=vscode" },
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      return vim.fn.input("Path to dll", vim.fn.getcwd(), "file")
    end,
  },
}

local dapui = require("dapui")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

dapui.setup()

vim.keymap.set("n", "<leader>dc", function()
  require("dap").continue()
end)
vim.keymap.set("n", "<leader>dl", function()
  require("dap").run_last()
end)
vim.keymap.set("n", "<leader>dt", function()
  require("dap").toggle_breakpoint()
end)
