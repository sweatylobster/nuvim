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
    config = function()
      vim.keymap.set("n", "<leader>bg", "TransparentToggle<CR>", {})
    end,
  },
}
