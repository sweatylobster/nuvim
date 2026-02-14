return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config.lua_ls = {
      settings = {
        Lua = {
          completion = { callSnippet = "Replace" },
          telemetry = { enable = false },
          hint = { enable = true },
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    }
    vim.lsp.config.tinymist = {
      formatterMode = "typstyle",
      exportPdf = "onType",
      semanticTokens = "disable",
    }

    vim.lsp.enable({ "c-language-server", "bashls", "lua_ls", "tinymist", "rust_analyzer", "ols" })

    vim.lsp.inlay_hint.enable = true

    local float_config = {
      focusable = true,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    }

    vim.diagnostic.config({
      underline = true,
      update_in_insert = false,
      virtual_text = true,
      virtual_lines = { current_line = true },
      severity_sort = true,
      float = float_config,
    })

    vim.lsp.buf.hover(float_config)
    vim.lsp.buf.signature_help(float_config)
  end,
}
