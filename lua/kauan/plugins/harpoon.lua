return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness
    local harpoon = require("harpoon")

		keymap.set(
			"n",
			"<leader>hm",
      function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
			{ desc = "Toggle quick menu" }
		)
		keymap.set(
			"n",
			"<leader>ha",
      function() harpoon:list():add()  end,
			{ desc = "Mark file with harpoon" }
		)
		keymap.set(
			"n",
			"<leader>h1",
			function() harpoon:list():select(1) end,
      { desc = "Go to first harpoon mark" }
		)
		keymap.set(
			"n",
			"<leader>h2",
			function() harpoon:list():select(2) end,
			{ desc = "Go to previous harpoon mark" }
		)
		keymap.set(
			"n",
			"<leader>h3",
			function() harpoon:list():select(3) end,
			{ desc = "Go to previous harpoon mark" }
		)
		keymap.set(
			"n",
			"<leader>h2",
			function() harpoon:list():select(4) end,
			{ desc = "Go to previous harpoon mark" }
		)
	end,
}
