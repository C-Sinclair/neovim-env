require("formatter").setup({
	javascriptreact = {
		function()
			return {
				exe = "prettier",
				args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
				stdin = true,
			}
		end,
	},
	javascript = {
		function()
			return {
				exe = "prettier",
				args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
				stdin = true,
			}
		end,
	},
	typescriptreact = {
		function()
			return {
				exe = "prettier",
				args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
				stdin = true,
			}
		end,
	},
	typescript = {
		function()
			return {
				exe = "prettier",
				args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
				stdin = true,
			}
		end,
	},
	rust = {
		function()
			return {
				exe = "rustfmt",
				args = { "--emit=stdout", "--edition 2018" },
				stdin = true,
			}
		end,
	},
	sh = {
		function()
			return {
				exe = "shfmt",
				args = { "-i", 2 },
				stdin = true,
			}
		end,
	},
	lua = {
		function()
			return {
				exe = "stylua",
				args = {
					"--config-path " .. os.getenv("XDG_CONFIG_HOME") .. "/stylua/stylua.toml",
				},
				stdin = true,
			}
		end,
	},
})
