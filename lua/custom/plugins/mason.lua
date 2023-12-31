return {
	"williamboman/mason.nvim",
	-- config = true,
	opts = {
		ensure_installed = {
			"clangd",
			"clang-format",
			"prettier",
			"shellcheck",
			"stylua",
			"black",
			"ruff",
			"mypy",
			"pyright",
			"html-lsp",
			"beautysh",
		},
	},
	config = function(_, opts)
		-- dofile(vim.g.base46_cache .. "mason")
		require("mason").setup(opts)

		-- custom nvchad cmd to install all mason binaries listed
		vim.api.nvim_create_user_command("MasonInstallAll", function()
			vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
		end, {})

		vim.g.mason_binaries_list = opts.ensure_installed
		return true
	end,
}
