return require('packer').startup(function(use)
  -- Packer can manage itself
		use 'wbthomason/packer.nvim'
				
		use({
			"hrsh7th/nvim-cmp",
			config = function() require("cmp-config").config() end,
			requires = {
				"L3MON4D3/LuaSnip",
				"saadparwaiz1/cmp_luasnip",
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-nvim-lua",
				"onsails/lspkind.nvim",
			},
		})
		use({
            "williamboman/mason.nvim", -- Package manager for tools
				config = function()
				require("mason").setup()
				require("mason-lspconfig").setup()
            end,
            requires = { "williamboman/mason-lspconfig.nvim" },
        })
        use({
            "neovim/nvim-lspconfig", -- LSP Config
            config = function() require("languageservers").config() end,
        })

        use({
            "catppuccin/nvim", -- Catppuccin colorscheme
            config = function() require("catppuccin-config").config() end,
            as = "catppuccin",
            run = ":CatppuccinCompile",
        })
end)
