return {
  "mfussenegger/nvim-dap",
  opts = function()
    local dap = require("dap")

    dap.configurations.python = dap.configurations.python or {}
    table.insert(dap.configurations.python, {
      name = "Custom Script: Current File",
      type = "python",
      request = "launch",
      program = function()
        return vim.fn.expand("%:p")
      end,
      pythonPath = function()
        local venv = vim.fn.getcwd() .. "/.venv/bin/python"
        if vim.fn.executable(venv) == 1 then
          return venv
        end
        return "python3"
      end,
      env = function()
        return { PYTHONPATH = vim.fn.getcwd() }
      end,
      justMyCode = false,
      console = "integratedTerminal",
    })
  end,
}
