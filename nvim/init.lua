require('plugins')
require('keymaps')

local set = vim.opt
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.termguicolors = true
set.clipboard = "unnamedplus"

set.icon = true
vim.opt.autoindent = true
vim.opt.smartindent = true

set.signcolumn = "yes"

vim.opt.expandtab = true
vim.opt.scrolloff = 20
vim.opt.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.smartindent = true

set.guicursor = ""
set.cursorline = true

set.showmatch = true
set.number = true
set.relativenumber = false
vim.api.nvim_command("set noswapfile")
-- vim.api.nvim_command("highlight Normal guibg=none")
-- vim.api.nvim_command("highlight NonText guibg=none")
-- vim.api.nvim_command("highlight Normal ctermbg=none")
-- vim.api.nvim_command("highlight NonText ctermbg=none")


require 'colorizer'.setup({
  '*',    -- Highlight all files, but customize some others.
  '!vim', -- Exclude vim from highlighting.
  -- Exclusion Only makes sense if '*' is specified!
})

--vim.cmd[[colorscheme catppuccin_frappe]]

local null_ls = require("null-ls")

null_ls.setup({
  debug = false,
  sources = {
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.code_actions.eslint_d,
    null_ls.builtins.formatting.prettier,
  },
  -- This is here to format on save
  on_attach = function(client)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd(
        [[
                 augroup LspFormatting
                 autocmd! * <buffer>
                 autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
                 augroup END
                 ]]
      )
    end
    requires = { "nvim-lua/plenary.nvim" }
  end
})

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
