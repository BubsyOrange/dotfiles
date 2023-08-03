local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

vim.g.mapleader = ' '

local plugins = {

    {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    "nvim-telescope/telescope-file-browser.nvim",

    "nvim-tree/nvim-tree.lua",

    "nvim-tree/nvim-web-devicons",

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    "nvim-lualine/lualine.nvim",

     "williamboman/mason.nvim",

    "williamboman/mason-lspconfig.nvim",

    "neovim/nvim-lspconfig",

    "hrsh7th/cmp-nvim-lsp",

    "hrsh7th/cmp-buffer",

    "hrsh7th/cmp-path",

    "hrsh7th/cmp-cmdline",

    "hrsh7th/nvim-cmp",

    {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    },

    "saadparwaiz1/cmp_luasnip",

    "rafamadriz/friendly-snippets",

    "tpope/vim-fugitive",

     "nvim-treesitter/nvim-treesitter",

    "nvim-orgmode/orgmode",

   {"akinsho/toggleterm.nvim", version = "*", config = true},

   "nvimdev/dashboard-nvim",
}

require("lazy").setup(plugins)
