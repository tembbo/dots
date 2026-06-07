return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		version = false,
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
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
				"query",
				"svelte",
				"vim",
				"vimdoc",
				"zig",
			},
			auto_install = true,
		},
		config = function(_, opts)
			local ts = require("nvim-treesitter")
			ts.setup(opts)

			vim.api.nvim_create_autocmd("FileType", {
				group = vim.api.nvim_create_augroup("my_treesitter_start", {
					clear = true,
				}),
				callback = function(ev)
					pcall(vim.treesitter.start, ev.buf)
					vim.bo[ev.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},

	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},
}
