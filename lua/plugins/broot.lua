return {
  "9999years/broot.nvim",
  config = function()
    require("broot").setup({
      config_files = {
        "~/.config/broot/nvim.toml",
      },
    })
  end,
  keys = {
    {
      "<leader>br",
      mode = "n",
      function()
        require("broot").broot()
      end,
    },
  },
}
