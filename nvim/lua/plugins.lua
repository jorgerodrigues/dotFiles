vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use({
    "nvimdev/lspsaga.nvim",
    after = 'nvim-lspconfig',
    config = function()
      require("lspsaga").setup({})
    end,
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      --Please make sure you install markdown and markdown_inline parser
      { "nvim-treesitter/nvim-treesitter" }
    }
  })
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  -- use 'xiyaowong/transparent.nvim' -- makes the background transparent
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'onsails/lspkind-nvim'         --pictograms like in vscode
  use 'akinsho/nvim-bufferline.lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp' -- completion engine
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use "windwp/nvim-ts-autotag"
  use "nvim-lua/plenary.nvim" -- Commont utilities
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'jose-elias-alvarez/null-ls.nvim'

  -- AI RELATED PLUGINS --
  use 'github/copilot.vim'

  use({
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })

  -- THEMES --

  use 'rmehri01/onenord.nvim'
  use 'catppuccin/vim'
  use({ 'rose-pine/neovim', as = 'rose-pine' })
end)
