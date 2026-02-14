return {
  {
    dir = "~/code/nvim-plugins/aguila.nvim",
    enabled = true,
    init = function()
      require("aguila").setup()
    end,
  },
  {
    "vijaymarupudi/nvim-fzf",
  },
  {
    "vijaymarupudi/nvim-fzf-commands",
  },
}
