return{
    "williamboman/mason.nvim",
    dependencies = {
	        "williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp"
    },
    config = function()
	    local masonlspconfig = require("mason-lspconfig")
	    local lspconfig = require("lspconfig")
	    local mason = require("mason")
	    local capabilities = require('cmp_nvim_lsp').default_capabilities()
	    mason.setup{
		    ui = {
			    icons = {
				    package_installed = "✓",
				    package_pending = "➜",
				    package_uninstalled = "✗"
			    }
		    }
	    }
	    masonlspconfig.setup{
		    ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls", "html", "texlab", "cssls","clangd","pyright","ruff"},
	    }
	    masonlspconfig.setup_handlers{
		    function (server_name)
			    lspconfig[server_name].setup{
				    capabilities = capabilities
			    }
		    end,
			["lua_ls"] = function ()
				lspconfig.lua_ls.setup{
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" }
							}
						}
					}
				}

			end,
		}


    end,
}
