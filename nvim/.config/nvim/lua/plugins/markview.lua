return{
	"OXY2DEV/markview.nvim",
	"lervag/vimtex",
        priority = 500,
	lazy = false,     -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
                -- VimTeX configuration goes here, e.g.
                vim.g.markview_experimental_check_rtp_message = false

                vim.g.vimtex_view_method = "zathura"
        end
}
