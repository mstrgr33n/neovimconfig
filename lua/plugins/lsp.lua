return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            require('config.lsp')
        end,
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            { 'j-hui/fidget.nvim', opts = {} }
        }
    },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            require('config.nvim-cmp')
        end,
        dependencies = {

            { 'hrsh7th/cmp-nvim-lsp', },
            { 'hrsh7th/cmp-buffer', },   -- buffer auto-completion
            { 'hrsh7th/cmp-path', },     -- path auto-completion
            { 'hrsh7th/cmp-cmdline', },  -- cmdline auto-completion
            'rafamadriz/friendly-snippets'
        }
    },
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { 'csharp_ls', 'lua_ls', 'typescript_ls' }
            })
        end
    },
    {
        'folke/neodev.nvim'
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require 'lsp_signature'.setup(opts) end
    }
}
