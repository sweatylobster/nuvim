return {
  "kylechui/nvim-surround",
  version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({})
  end,
  keys = {
    { "ir", mode = "o", "i[" },
    { "ar", mode = "o", "a[" },
    { "ia", mode = "o", "i<" },
    { "aa", mode = "o", "a<" },
  },
}
