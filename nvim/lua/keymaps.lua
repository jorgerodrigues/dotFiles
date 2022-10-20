local keymap = vim.api.nvim_set_keymap
local term_opts = { silent = true }
local opts = { noremap = true, silent = true }

vim.g.mapleader = "-"

-- Normal Mode --
keymap("n", "<S-j>", ":m+<cr>", opts)
keymap("n", "<S-b>", ":m .-2<cr>", opts)

keymap("n", "<S-u>", ":redo<cr>", opts)

-- Tabs
keymap("n","<C-c>", ":tabc<cr>", {})
keymap("n","<C-t>", ":tabnew<cr>", {})
keymap("n","<C-n>", ":tabn<cr>", {})

-- Splits
keymap("n", "vs", ":vs<CR>", opts) -- Split window vertically
keymap("n", "ss", ":wincmd w<CR>", opts) -- Move cursor to next window when split
keymap("n", "<Leader>m", ":vertical resize +10<CR>", opts)
keymap("n", "<Leader>s", ":vertical resize -10<CR>", opts)
