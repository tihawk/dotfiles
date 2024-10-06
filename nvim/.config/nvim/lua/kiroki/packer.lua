-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use({'wbthomason/packer.nvim'})

  use({
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  })

  use ({ 'catppuccin/nvim',
  as = 'catppuccin',
  config = function()
	  vim.cmd('colorscheme catppuccin-mocha')
  end
  })

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use ({'nvim-treesitter/playground'})

  use ({'ThePrimeagen/harpoon'})

  use ({'mbbill/undotree'})

  use ({'tpope/vim-fugitive'})

  use ({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use ({'neovim/nvim-lspconfig'})
  use ({'hrsh7th/nvim-cmp'})
  use ({'hrsh7th/cmp-nvim-lsp'})
  use ({'hrsh7th/cmp-buffer'})
  use ({'williamboman/mason.nvim'})
  use ({'williamboman/mason-lspconfig.nvim'})
  use ({'m4xshen/autoclose.nvim'})

  use({
    "epwalsh/obsidian.nvim",
    tag = "*",  -- recommended, use latest release instead of latest commit
    requires = {
      -- Required.
      "nvim-lua/plenary.nvim",
    }
  })

  use({"pocco81/auto-save.nvim"})

end)
