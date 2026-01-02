return {
  "Wansmer/treesj",
  keys = { "<space>m", "<space>j", "<space>s" },
  dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require("treesj").setup({--[[ your config ]]
    })
    vim.keymap.set("n", "<leader>gS", function()
      require("treesj").toggle()
    end, {
      noremap = true,
      silent = true,
      desc = "Toggle [s]plit/join",
    })
  end,
}
