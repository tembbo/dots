return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({
					async = true,
					timeout_ms = 500,
					lsp_format = "fallback",
				})
			end,
		},
	},
	opts = {
		format_on_save = function()
			return {
				timeout_ms = 1000,
				lsp_format = "fallback",
			}
		end,
		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			lua = { "stylua" },
			html = { "prettier" },
			css = { "prettier" },
		},
	},
}
