-- From ThePrimeagen dotfiles --
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gaa", ":Git add .", { desc = "Stage all files" })

local oussama_Fugitive = vim.api.nvim_create_augroup("oussama_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
	group = oussama_Fugitive,
	pattern = "*",
	callback = function()
		if vim.bo.ft ~= "fugitive" then
			return
		end

		local bufnr = vim.api.nvim_get_current_buf()
		local opts = function(description)
			return { buffer = bufnr, remap = false, desc = description }
		end

		vim.keymap.set("n", "<leader>p", function()
			vim.cmd.Git("push")
		end, opts("Git push"))

		-- rebase always
		vim.keymap.set("n", "<leader>P", function()
			vim.cmd.Git({ "pull", "--rebase" })
		end, opts("Git Pull (rebase)"))

		-- NOTE: It allows me to easily set the branch i am pushing and any tracking
		-- needed if i did not set the branch up correctly
		vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts("Git push (Choose branch!!)"))
	end,
})
