local lspconfig =require "lspconfig"

local enter = "<CR>"
lspconfig.pyright.setup {
    on_attach = function ()
        local buffer = vim.api.nvim_buf_get_name(0)
        vim.keymap.set("n", "<leader>R", ":!python3 "..buffer ..enter)
    end
}
