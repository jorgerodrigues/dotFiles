vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use {
   'nvim-lualine/lualine.nvim',
   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
     }
  use 'onsails/lspkind-nvim' --pictograms like in vscode
  use 'hrsh7th/cmp-buffer'  
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp' -- completion engine
  use 'L3MON4D3/LuaSnip' -- Snippet engine
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

end)
