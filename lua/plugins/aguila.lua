return {
  {
    dir = "~/code/nvim-plugins/aguila.nvim",
    dependencies = {
      "vijaymarupudi/nvim-fzf",
      "vijaymarupudi/nvim-fzf-commands",
    },
    enabled = true,
    init = function()
      require("aguila").setup()
    end,
  },
}
