local Terminal = require("toggleterm.terminal").Terminal

vim.keymap.set("n", "<leader>tr", function()
  vim.cmd("w")
  local file = vim.fn.expand("%:p")
  local out = vim.fn.expand("~/.cache/nvim_rust")
  local escaped_file = vim.fn.shellescape(file)
  local escaped_out = vim.fn.shellescape(out)

  local rust_term = Terminal:new({
    cmd = "rustc " .. escaped_file .. " -o " .. escaped_out .. " && " .. escaped_out,
    direction = "float",
    close_on_exit = false,
    hidden = false,
  })

  rust_term:toggle()
end, { desc = "Run Rust file" })