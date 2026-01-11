return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    priority = 1000,
    config = function()
      require("telescope").setup{
        defaults = {
          layout_strategy = "horizontal",
          prompt_prefix = "🔍 ",
          sorting_strategy = "ascending",
          file_ignore_patterns = { "node_modules" },
        },
      }
      -- keymap ví dụ
      vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {desc="Tìm file"})
      vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {desc="Live grep"})
      vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {desc="Danh sách buffer"})
      vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {desc="Help tags"})
    end
  }
}