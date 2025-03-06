return{
	"nvim-treesitter/nvim-treesitter",
	"nvim-treesitter/playground",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function ()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "html", "javascript", "latex","cpp", "java"},
			highlight = { enable = true },
			indent = { enable = true },
			auto_install = true,

		}
	end,
}
