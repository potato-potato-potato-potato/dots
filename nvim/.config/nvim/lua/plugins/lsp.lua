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
                    automatic_enable = true
	    }

            vim.lsp.config.lua_ls = {
                    settings = {
                            Lua = {
                                    diagnostics = {
                                            globals = { "vim" }
                                    }
                            }
                    }

            }
            vim.lsp.config.clangd = {
                    capabilities = capabilities,
                    cmd = { "clangd", "--background-index", "--clang-tidy" },
                    on_attach = function(_, bufnr)
                            -- Optional: show diagnostics on hover
                            vim.api.nvim_create_autocmd("CursorHold", {
                                    buffer = bufnr,
                                    callback = function()
                                            vim.diagnostic.open_float(nil, { focusable = false })
                                    end
                            })
                    end

            }
	end,
}
