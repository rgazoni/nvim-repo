vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use ({
		'EdenEast/nightfox.nvim',
		as = 'nightfox',
		config = function ()
			vim.cmd('colorscheme nightfox')
		end
	})

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    } 
    use ('prettier/vim-prettier', { run = 'npm install' })
    use 'mfussenegger/nvim-lint'
    use 'ueber-devel/ueberzug'
    use ( 'dccsillag/magma-nvim', {run = ':UpdateRemotePlugins'} )

    -- Database interaction
    use 'tpope/vim-dadbod' -- Core plugin for database interaction

    -- UI for vim-dadbod
    use {
      'kristijanhusak/vim-dadbod-ui',
      requires = {'tpope/vim-dadbod'} -- This ensures vim-dadbod is loaded first
    }

    -- Markdown preview plugin
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  }

end)
