return {
  "laytan/cloak.nvim",
  config = function()
    require("cloak").setup({
      enabled = true,
      patterns = {
        {
          file_pattern = {
            ".env*",
            ".age*",
          },
          cloak_pattern = {
            { "=.+" },
            { "(AGE-SECRET-KEY-).+", replace = "%1" },
          },
        },
      },
    })
  end,
}
