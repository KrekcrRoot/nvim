local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "phaazon/hop.nvim" },
	{ 
		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v3.x",
    		dependencies = {
      			"nvim-lua/plenary.nvim",
      			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    	}
	},
	{"nvim-treesitter/nvim-treesitter"},
	{"neovim/nvim-lspconfig"},
	{"rust-lang/rust-analyzer"},
	{"rebelot/kanagawa.nvim"},
    -- {"hrsh7th/nvim-cmp",
	--    dependencies = {
	--	    "hrsh7th/cmp-nvim-lsp",
    --	    "hrsh7th/cmp-nvim-lua",
	--	    "hrsh7th/cmp-path",
	--	    "hrsh7th/cmp-cmdline",
    --        "saadparwaiz1/cmp_luasnip",
	--	    "L3MON4D3/LuaSnip",
    --        "hrsh7th/cmp-vsnip",
    --    }
    --}
    {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'}, {'lewis6991/gitsigns.nvim'},

    {"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
    {'hrsh7th/cmp-nvim-lsp-signature-help'}, {
        'linrongbin16/lsp-progress.nvim',
        event = {'VimEnter'},
        dependencies = {'nvim-tree/nvim-web-devicons'},
        config = function() require('lsp-progress').setup() end
    }, {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    }, {"folke/which-key.nvim"},
       { 'hrsh7th/vim-vsnip' },
    {'hrsh7th/vim-vsnip-integ'},
})
