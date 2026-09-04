return {
  "aohoyd/broot.nvim",
  lazy = false,
  opts = {},
  keys = {
    {
      "<leader>e",
      mode = "n",
      function()
        vim.cmd([[Broot]])
      end,
    },
  },
}
