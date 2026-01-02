return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  -- config = function()
  --   local opts = { noremap = true, silent = true }
  --   vim.keymap.set("n", "-", "<CMD>Oil <CR>", opts)
  --   vim.keymap.set("n", "<leader>-", function()
  --     require("oil").toggle_float()
  --   end, opts)
  -- end
}
