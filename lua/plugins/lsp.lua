return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config.lua_ls = {
      Lua = {
        completion = { callSnippet = "Replace" },
        telemetry = { enable = false },
        hint = { enable = true },
      },
    }
    vim.lsp.config.tinymist = {
      formatterMode = "typstyle",
      exportPdf = "onType",
      semanticTokens = "disable",
    }

    vim.lsp.enable({ "c-language-server" })
    vim.lsp.enable({ "bashls" })
    vim.lsp.enable({ "lua_ls" })
    vim.lsp.enable({ "tinymist" })
    vim.lsp.enable({ "rust_analyzer" })
  end,
}
