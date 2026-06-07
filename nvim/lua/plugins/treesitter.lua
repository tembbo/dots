return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	event = { "BufReadPost", "BufNewFile" },
	build = function()
		require("nvim-treesitter").update()
	end,
	opts = {
		ensure_installed = {
			"bash",
			"css",
			"html",
			"javascript",
			"typescript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"svelte",
			"vimdoc",
			"zig",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
	config = function(_, opts)
		require("nvim-treesitter").setup(opts)
	end,
}

-- return {
-- 	"nvim-treesitter/nvim-treesitter",
-- 	branch = "main",
-- 	event = { "BufEnter" },
-- 	build = function()
-- 		require("nvim-treesitter.install").update({ with_sync = true })
-- 	end,
-- 	config = function()
-- 		---@diagnostic disable: missing-fields
-- 		require("nvim-treesitter.configs").setup({
-- 			ensure_installed = {
-- 				"bash",
-- 				"css",
-- 				"html",
-- 				"javascript",
-- 				"json",
-- 				"lua",
-- 				"markdown",
-- 				"markdown_inline",
-- 				"svelte",
-- 				"vimdoc",
-- 				"zig",
-- 			},
-- 			auto_install = true,
-- 			highlight = {
-- 				enable = true,
-- 			},
-- 			indent = {
-- 				enable = true,
-- 			},
-- 		})
-- 	end,
-- }
