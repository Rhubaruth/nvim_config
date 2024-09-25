return {
    -- { "R-nvim/R.nvim", lazy = false }
	{ "jalvesaq/Nvim-R", branch = "master", ft = { "r", "rmd", "quarto" } },
	{
		"jalvesaq/cmp-nvim-r",
		ft = { "r", "rmd", "quarto" },
		config = function()
			require("cmp_nvim_r").setup({})
		end,
	},
}
