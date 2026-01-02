return {
  "9999years/broot.nvim",
  config = function()
    require("broot").setup({
      config_files = {
        "~/.config/broot/nvim.toml",
      },
    })
    vim.keymap.set("n", "<leader>br", function()
      require("broot").broot()
    end)
  end,
}
