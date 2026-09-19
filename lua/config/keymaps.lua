local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", opts)

-- Edit non-existent paths.
keymap("", "gf", ":edit <cfile><CR>")
keymap("", "gt", ":tabedit <cfile><CR>")

-- Get into normal mode in the terminal. Often easier than tmux copy-mode.
keymap("t", "<esc><esc>", "<C-\\><C-n>")

-- MOVEMENTS
--

-- Use j and k to move lines *visually*, rather than vim's lines.
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- buf movements.
keymap("n", "<leader>q", ":bdelete<CR>", opts)

-- line movements
keymap({ "n", "x", "o" }, "gh", "^")
keymap({ "n", "x", "o" }, "gl", "$")

-- REGISTERS
--

-- repeatably replace text:
-- pasting over visually-selected text does not overwrite the clipboard.
keymap({ "n", "v" }, "<leader>p", '"_dp', opts)

-- yank to clipboard.
keymap({ "n", "v" }, "<leader>y", '"+y', opts)
keymap({ "n", "v" }, "<leader>Y", '"+Y', opts)

-- POSITIONING
--

-- center search result.
keymap("n", "gn", "nzzzv", opts)
keymap("n", "gN", "Nzzzv", opts)

-- stay put when joining.
keymap("n", "J", "mzJ`z", opts)

-- center page scrolling.
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)

keymap("n", "<leader>gb", function()
  -- Prompt to make a nice-looking banner (ty lung)
  vim.ui.input({ prompt = "", scope = "buffer" }, function(input)
    local length = 60 -- looks nice

    -- Get the comment for the buffer, since {} defaults to `local`
    local cmt = vim.api.nvim_get_option_value("commentstring", {}) or "--"
    local t = "[" .. input .. "] " -- encloses

    local lhs = string.format(cmt, t) -- starts the line off
    local fill = cmt:match("."):rep(length - vim.fn.strcharlen(lhs)) -- fills it :)
    local line = lhs .. fill
    local col = line:find("%[")

    local pos = vim.api.nvim_win_get_cursor(0) -- remembers where we were
    vim.api.nvim_buf_set_lines(0, pos[1] - 1, pos[1] - 1, false, { line })
    vim.api.nvim_win_set_cursor(0, { pos[1], col }) -- takes us to msg
  end)
end, {})

-- INSERT MODE
--

-- add undo points after punctuation.
keymap("i", "-", "-<c-g>u", opts)
keymap("i", "_", "_<c-g>u", opts)
keymap("i", ".", ".<c-g>u", opts)
keymap("i", ",", ",<c-g>u", opts)
keymap("i", "!", "!<c-g>u", opts)
keymap("i", "?", "?<c-g>u", opts)

-- VISUAL MODE
--

-- stay in visual mode when indenting. (using `.` is absurd.)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
