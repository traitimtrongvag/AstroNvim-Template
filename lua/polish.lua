local Terminal = require("toggleterm.terminal").Terminal

local rust

vim.keymap.set("n", "<leader>tr", function()
  vim.cmd("w")
  local file = vim.fn.expand("%:p")
  local out = vim.fn.expand("~/.cache/nvim_rust")

  if not rust then
    rust = Terminal:new({
      direction = "float",
      close_on_exit = false,
    })
  end

  rust.cmd = "rustc " .. file .. " -o " .. out .. " && " .. out .. "; read"
  rust:toggle()
end, { desc = "Run Rust file" })