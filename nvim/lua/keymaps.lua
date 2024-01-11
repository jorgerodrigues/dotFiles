local keymap = vim.keymap.set
local term_opts = { silent = true }
local opts = { noremap = true, silent = true }

vim.g.mapleader = "<Space>"

-- Normal Mode --
keymap("n", "<S-j>", ":m+<cr>", opts)
keymap("n", "<S-b>", ":m .-2<cr>", opts)
keymap("n", "<Space><Tab>", ":bnext<CR>", opts)
keymap("n", "<S-u>", ":redo<cr>", opts)
keymap("n", "rn", vim.lsp.buf.rename, opts)
keymap("n", "<C-.>", vim.lsp.buf.completion, opts)

-- Tabs
keymap("n","<C->", ":tabc<cr>", {})
keymap("n","<nt>", ":tabnew<cr>", {})
keymap("n","<C-n>", ":tabn<cr>", {})

-- Splits
keymap("n", "vs", ":vs<CR>", opts) -- Split window vertically
keymap("n", "rr", ":wincmd w<CR>", opts) -- Move cursor to next window when split
keymap("n", "<Leader>m", ":vertical resize +10<CR>", opts)
keymap("n", "<Leader>s", ":vertical resize -10<CR>", opts)

-- LSP Saga
keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap('n', 'gd', '<Cmd>Lspsaga goto_definition<CR>', opts)
keymap('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
keymap('n', 'gr', '<Cmd>Lspsaga finder<CR>', opts)
keymap('n', 'ga', '<Cmd>Lspsaga code_action<CR>', opts)
