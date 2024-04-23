return {
	"HiPhish/rainbow-delimiters.nvim",

	config = function()
		require("rainbow-delimiters.setup").setup({
			highlight = {
				-- ...
				"RainbowDelimiterGreen",
				"RainbowDelimiterCyan",
				"RainbowDelimiterBlue",
				"RainbowDelimiterViolet",
				"RainbowDelimiterRed",
				"RainbowDelimiterOrange",
				"RainbowDelimiterYellow",
			},
		})
	end,
}
