return {
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme("kanagawa-paper-ink")
    end,
    opts = {},
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    priority = 999,
    config = function() end,
    keys = {
      { "<leader>bg", mode = "n", ":TransparentToggle<CR>" },
    },
  },
  {
    "asiryk/auto-hlsearch.nvim",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup()
    end,
  },
}
