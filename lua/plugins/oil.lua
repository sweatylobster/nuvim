return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    float = { preview_split = "right" },
  },
  -- Optional dependencies
  -- dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  keys = {
    {
      "-",
      function()
        require("oil").toggle_float(nil, { preview = { horizontal = true } }, nil)
      end,
    },
  },
}
