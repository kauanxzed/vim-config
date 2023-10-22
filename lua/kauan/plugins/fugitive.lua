return {
	"tpope/vim-fugitive",
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<leader>gs", vim.cmd.Git)
		local bufnr = vim.api.nvim_get_current_buf()
		local opts = { buffer = bufnr, remap = false }
		vim.keymap.set("n", "<leader>p", function()
			vim.cmd.Git("push")
		end, opts)
	end,
}
