local Terminal = require("toggleterm.terminal").Terminal

vim.keymap.set("n", "<leader>tr", function()
  vim.cmd("w")
  local file = vim.fn.expand("%:p")
  local out = vim.fn.expand("~/.cache/nvim_rust")

  local rust_term = Terminal:new({
    cmd = "rustc " .. file .. " -o " .. out .. " && " .. out,
    direction = "float",
    close_on_exit = false,
    hidden = false,
  })

  rust_term:toggle()
end, { desc = "Run Rust file" })