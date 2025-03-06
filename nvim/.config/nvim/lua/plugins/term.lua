return{
	{'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}},
	{
		'willothy/flatten.nvim',
		priority = 1001,
		lazy = false,
		config = true,
		opts = {
			window = {
				open = "alternate",
			}
		}
	}

}
