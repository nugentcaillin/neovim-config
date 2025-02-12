return {
	{
    "williamboman/mason.nvim",
		lazy=false,
		config = function ()
			require("mason").setup()
		end,
	},
	{
    "williamboman/mason-lspconfig.nvim",
		lazy=false,
		opts= {
			auto_install = true,	
			ensure_installed = {
				"html",
				"lua_ls",
				"rust_analyzer",
				"cssls",
				"eslint",
				"vtsls",
			}
		}
	},
	{
    "neovim/nvim-lspconfig",
		lazy = false,
		config = function ()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.html.setup({
				capabilities = capabilities
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
    		settings = {
      		['rust-analyzer'] = {
        		diagnostics = {
         		enable = true;
        		}
      		}
    		}
			})
			lspconfig.cssls.setup({
				capabilities = capabilities
			})
			lspconfig.eslint.setup({
				capabilities = capabilities
			})
			lspconfig.vtsls.setup({
				capabilities = capabilities
			})
		end,
	},
}
