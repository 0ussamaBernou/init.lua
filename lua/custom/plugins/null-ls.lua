return {
	"jose-elias-alvarez/null-ls.nvim",
	lazy = true,
	event = "VeryLazy",
	opts = function()
		return require("custom.configs.null-ls")
	end,
}
