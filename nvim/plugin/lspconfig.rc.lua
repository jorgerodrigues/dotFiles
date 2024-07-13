local au = vim.api.nvim_create_autocmd
local ag = vim.api.nvim_create_augroup
local clear_au = vim.api.nvim_clear_autocmds

local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      clear_au({ group = augroup, buffer = bufnr }),
      group = augroup,
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.format() end
    })
  end
end

-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

-- Go
nvim_lsp.gopls.setup {
  on_attach = on_attach,
}

nvim_lsp.astro.setup {
  on_attach = on_attach,
}

nvim_lsp.cssls.setup {
  on_attach = on_attach,
}

nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
}

nvim_lsp.html.setup {
  on_attach = on_attach,
}

nvim_lsp.jsonls.setup {
  on_attach = on_attach,
}

nvim_lsp.prismals.setup {
  on_attach = on_attach,
}

nvim_lsp.sqlls.setup {
  on_attach = on_attach,
}

nvim_lsp.graphql.setup {
}

nvim_lsp.tailwindcss.setup {
  on_attach = on_attach,
}
