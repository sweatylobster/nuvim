return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_files = "~/orgfiles/**/*",
      org_default_notes_file = "~/orgfiles/refile.org",
      org_capture_templates = {
        h = {
          description = "Hearings",
          template = "", -- name, time, conference link, passcode
          target = "~/orgfiles/liens.org",
        },
      },
      -- 416 of configuration.org
      -- https://pandoc.org/typst-property-output.html
      org_custom_exports = {
        t = {
          label = "Export to .typ",
          action = function(exporter)
            local current_file = vim.api.nvim_buf_get_name(0)
            local target = vim.fn.fnamemodify(current_file, ":p:r") .. ".typ"
            local command = { "pandoc", current_file, "-o", target }
            local on_success = function(output)
              print("Success!")
              vim.api.nvim_echo({ { table.concat(output, "\n") } }, true, {})
            end
            local on_error = function(err)
              print("Error!")
              vim.api.nvim_echo({ { table.concat(err, "\n"), "ErrorMsg" } }, true, {})
            end
            return exporter(command, target, on_success, on_error)
          end,
        },
      },
    })

    -- Experimental LSP support
    vim.lsp.enable("org")
  end,
}
