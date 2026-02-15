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
